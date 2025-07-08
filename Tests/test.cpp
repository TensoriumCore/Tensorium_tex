#include "../lib/Backend/MLIRBackend.hpp"
#include "../lib/Backend/PrintBackend.hpp"
#include "../lib/Backend/Tensorium_backend.hpp"
#include "../lib/Frontend/AST_Utils.hpp"
#include "../lib/Frontend/FlattenOps.hpp"
#include "../lib/Frontend/Tensorium_AST.hpp"
#include "../lib/Frontend/Tensorium_Tensor_Index.hpp"
#include "../lib/Frontend/Tensorium_Tex.hpp"
#include "../lib/Utils/MetricExtract.hpp"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <memory>
#include <string>
#include <map>
#include <vector>

using namespace tensorium;

namespace tensorium {
    using Node = std::shared_ptr<ASTNode>;
}
int main(int argc, char *argv[]) {
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

  for (auto &math : blocks) {
    // auto eq = math.find('=');
    // if (eq != std::string::npos)
    //     math = math.substr(eq + 1);
    math.erase(std::remove(math.begin(), math.end(), '&'), math.end());
    size_t start = math.find_first_not_of(" \t\n\r");
    size_t finish = math.find_last_not_of(" \t\n\r");
    if (start != std::string::npos && finish != std::string::npos)
      math = math.substr(start, finish - start + 1);
  }

  std::cout << "[DEBUG] Cleaned blocks for parser:\n";
  for (size_t i = 0; i < blocks.size(); ++i)
    std::cout << "  Block " << (i + 1) << " : [" << blocks[i] << "]\n";
  std::cout << "\n";

  std::vector<std::shared_ptr<tensorium::ASTNode>> all_asts;
  int block_id = 1;
  for (const auto &math : blocks) {
    std::cout << "--- Block #" << block_id++ << " ---\n";
    std::cout << math << "\n";

    Lexer lexer(math);
    std::vector<Token> tokens = lexer.tokenize();

    std::cout << "=== Tokens ===" << std::endl;
    for (const auto &tok : tokens) {
      std::cout << "Token: \"" << tok.value
                << "\" [Type=" << token_type_name(tok.type) << "]\n";
    }

    Parser parser(tokens);
    auto asts = parser.parse_statements();
    FlattenMul fm;
    for (auto &r : asts)
      r = fm.run(r);
    std::cout << "\n=== AST ===" << std::endl;
    if (asts.empty()) {
      std::cerr << "Parse error.\n";
      continue;
    }

    int i = 1;
    Tensorium::PrintBackend backend;
    for (const auto &root : asts) {
      std::cout << "Statement #" << i++ << " :\n";
      backend.generate(root);
      std::cout << std::endl;
      all_asts.push_back(root);
	}
  }


  std::cout << "\n=== Metric Components ===\n";
  for (const auto& root : all_asts) {
	  std::cout << "Processing AST:\n";

	  std::vector<std::shared_ptr<tensorium::ASTNode>> terms;
	  flatten_sum(root, terms);

	  if (terms.empty())
		  terms.push_back(root);

	  std::vector<tensorium::MetricComponent> all_components;
	  for (const auto& term : terms) {
		  auto comps = tensorium::extract_metric_terms(term);
		  for (const auto& c : comps) {
			  if (c.is_metric_component) 
				  all_components.push_back(c);
		  }
	  }

	  if (all_components.empty()) {
		  std::cout << "  (no metric components found)\n";
		  continue;
	  }

	  std::map<std::pair<std::string, std::string>, tensorium::Node> fusion;
	  for (const auto& c : all_components) {
		  std::string i1 = c.indices.first, i2 = c.indices.second;
		  if (i1 > i2) std::swap(i1, i2);
		  auto key = std::make_pair(i1, i2);
		  if (fusion.count(key)) {
			  fusion[key] = std::make_shared<tensorium::ASTNode>(
					  tensorium::ASTNodeType::BinaryOp, "+", std::vector<tensorium::Node>{fusion[key], c.factor});
		  } else {
			  fusion[key] = c.factor;
		  }
	  }

	  // Affichage et génération MLIR
	  for (const auto& kv : fusion) {
		  std::string i1 = kv.first.first, i2 = kv.first.second;
		  auto mlirify = [](const std::string& idx) {
			  std::string out;
			  for (char c : idx) {
				  if (std::isalnum(c)) out += c;
				  else out += '_';
			  }
			  return out;
		  };
		  std::string func_name = "g_" + mlirify(i1) + mlirify(i2);

		  std::cout << "  g_{" << i1 << i2 << "} = ";
		  pretty_print_factor(kv.second, std::cout);
		  std::cout << "\n";

		  Tensorium::MLIRBackend mlir_backend("output.mlir", func_name);
		  mlir_backend.generate(kv.second);
	  }
  }

  return 0;
}
