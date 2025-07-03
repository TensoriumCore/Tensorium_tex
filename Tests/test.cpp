#include <iostream>
#include <fstream>
#include <vector>
#include "../lib/Frontend/Tensorium_Tex.hpp"
#include "../lib/Frontend/Tensorium_AST.hpp"
#include "../lib/Frontend/Tensorium_Tensor_Index.hpp"
#include "../lib/Frontend/AST_Utils.hpp"

using namespace tensorium;

std::string token_type_name(TokenType type) {
switch (type) {
    case TokenType::plus: return "plus";
    case TokenType::minus: return "minus";
	case TokenType::tilde: return "tilde";
	case TokenType::hat: return "hat";
    case TokenType::mult: return "mult";
	case TokenType::equal: return "equal";
    case TokenType::divide: return "div"; 
    case TokenType::pow: return "pow";
    case TokenType::lpar: return "lpar";
    case TokenType::rpar: return "rpar";
    case TokenType::lbrace: return "lbrace";
    case TokenType::rbrace: return "rbrace";
    case TokenType::symbol: return "symbol";
    case TokenType::integer: return "integer";
    case TokenType::real: return "real";
    case TokenType::derivative: return "derivative";
    case TokenType::partial: return "partial";
    case TokenType::integral: return "integral";
    case TokenType::covariant: return "covariant";
    case TokenType::contravariant: return "contravariant";
    case TokenType::transpose: return "transpose";
    case TokenType::inner: return "inner";
    case TokenType::outer: return "outer";
    case TokenType::end: return "end";
    case TokenType::unknown: return "unknown";
    default: return "???";

    }
}

int main(int argc, char* argv[]) {
    std::string input;

    if (argc > 1) {
        std::ifstream file(argv[1]);
        if (!file) {
            std::cerr << "Erreur : impossible d’ouvrir " << argv[1] << "\n";
            return 1;
        }
        std::getline(file, input, '\0');
    } else {
        input = "$\\Gamma^{k}_{ij} + R_{mn}$";
    }

    std::cout << "=== Input ===\n" << input << "\n\n";

    // On extrait les blocs $...$
    std::vector<std::string> blocks = extract_math_blocks(input);

    if (blocks.empty()) {
        // Si aucun bloc $, traite tout l'input comme un seul bloc
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
            std::cerr << "Erreur : parsing invalide.\n";
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
