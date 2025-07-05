#include <iostream>
#include <fstream>
#include <vector>
#include <algorithm>
#include "../lib/Frontend/Tensorium_Tex.hpp"
#include "../lib/Frontend/Tensorium_AST.hpp"
#include "../lib/Frontend/Tensorium_Tensor_Index.hpp"
#include "../lib/Frontend/AST_Utils.hpp"
#include "../lib/Backend/Tensorium_backend.hpp"
#include "../lib/Backend/PrintBackend.hpp"
#include "../lib/Backend/MLIRBackend.hpp"
#include "../lib/Utils/MetricExtract.hpp"

using namespace tensorium;

int main(int argc, char* argv[]) {
    std::string input;

    if (argc > 1) {
        std::ifstream file(argv[1]);
        if (!file) {
            std::cerr << "Error: can't open file " << argv[1] << "\n";
            return 1;
        }
        std::getline(file, input, '\0');
    } else {
        input = "$\\Gamma^{k}_{ij} + R_{mn}$";
    }

    std::cout << "=== Input ===\n" << input << "\n\n";

    std::vector<std::string> blocks = extract_math_blocks(input);

    if (blocks.empty()) {
        std::cerr << "No math block found (check your $...$)\n";
        return 2;
    }

    for (auto& math : blocks) {
        auto eq = math.find('=');
        if (eq != std::string::npos)
            math = math.substr(eq + 1);
        math.erase(std::remove(math.begin(), math.end(), '&'), math.end());
        size_t start = math.find_first_not_of(" \t\n\r");
        size_t finish = math.find_last_not_of(" \t\n\r");
        if (start != std::string::npos && finish != std::string::npos)
            math = math.substr(start, finish - start + 1);
    }

    std::cout << "[DEBUG] Cleaned blocks for parser:\n";
    for (size_t i = 0; i < blocks.size(); ++i)
        std::cout << "  Block " << (i+1) << " : [" << blocks[i] << "]\n";
    std::cout << "\n";

    std::vector<std::shared_ptr<tensorium::ASTNode>> all_asts;
    int block_id = 1;
    for (const auto& math : blocks) {
        std::cout << "--- Block #" << block_id++ << " ---\n";
        std::cout << math << "\n";

        Lexer lexer(math);
        std::vector<Token> tokens = lexer.tokenize();

        std::cout << "=== Tokens ===" << std::endl;
        for (const auto& tok : tokens) {
            std::cout << "Token: \"" << tok.value << "\" [Type=" << token_type_name(tok.type) << "]\n";
        }

        Parser parser(tokens);
        auto asts = parser.parse_statements();

        std::cout << "\n=== AST ===" << std::endl;
        if (asts.empty()) {
            std::cerr << "Parse error.\n";
            continue;
        }

        int i = 1;
        Tensorium::PrintBackend backend;
        for (const auto& root : asts) {
            std::cout << "Statement #" << i++ << " :\n";
            backend.generate(root); 
            std::cout << std::endl;
            all_asts.push_back(root);
        }
    }

    auto mlir_backend = std::make_unique<Tensorium::MLIRBackend>("output.mlir");
    for (const auto& ast : all_asts)
        mlir_backend->generate(ast);

	std::cout << "\n=== Metric Components ===\n";
	for (const auto& root : all_asts) {
		std::cout << "Processing AST:\n";

		std::vector<std::shared_ptr<tensorium::ASTNode>> terms;
		flatten_sum(root, terms);

		if (terms.empty())
			terms.push_back(root);

		bool found = false;
		for (const auto& term : terms) {
			auto comps = tensorium::extract_metric_terms(term);
			if (comps.empty())
				continue;
			found = true;
			for (const auto& c : comps) {
				std::cout << "  g_{" << c.indices.first << c.indices.second << "} = ";
				pretty_print_factor(c.factor, std::cout);
				std::cout << "  (for variable: " << c.variable << ")\n";
			}
		}
		if (!found)
			std::cout << "  (no metric components found)\n";
	}

	return 0;
}
