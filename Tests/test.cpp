#include <iostream>
#include <fstream>
#include <vector>
#include "../lib/Frontend/Tensorium_Tex.hpp"
#include "../lib/Frontend/Tensorium_AST.hpp"
#include "../lib/Frontend/Tensorium_Tensor_Index.hpp"
#include "../lib/Frontend/AST_Utils.hpp"

using namespace tensorium;


int main(int argc, char* argv[]) {
    std::string input;

    if (argc > 1) {
        std::ifstream file(argv[1]);
        if (!file) {
            std::cerr << "Error: can't open file" << argv[1] << "\n";
            return 1;
        }
        std::getline(file, input, '\0');
    } else {
        input = "$\\Gamma^{k}_{ij} + R_{mn}$";
    }

    std::cout << "=== Input ===\n" << input << "\n\n";

    std::vector<std::string> blocks = extract_math_blocks(input);

    if (blocks.empty()) {
        blocks.push_back(input);
    }

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
        for (const auto& root : asts) {
            std::cout << "Statement #" << i++ << " :\n";
            print_ast(root);  
            std::cout << std::endl;
        }
    }

    return 0;
}
