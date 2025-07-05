#include "MetricExtract.hpp"
#include "../Frontend/Tensorium_AST.hpp"
#include "../Frontend/Tensorium_Tensor_Index.hpp"
#include <algorithm>

void pretty_print_factor(const std::shared_ptr<tensorium::ASTNode>& node, std::ostream& os) {
    if (!node) {
        os << "1";
        return;
    }
    using namespace tensorium;
    switch (node->type) {
        case ASTNodeType::Number:
        case ASTNodeType::Symbol:
            os << node->value;
            break;

        case ASTNodeType::TensorSymbol: {
            auto sym = static_cast<TensorSymbolNode*>(node.get());
            os << sym->value;
            if (!sym->indices.empty()) {
                os << "^{" << sym->indices[0].name << "}";
            }
            break;
        }

        case ASTNodeType::UnaryOp:
            if (node->value == "-") {
                os << "-";
                pretty_print_factor(node->children[0], os);
            } else {
                os << node->value;
                pretty_print_factor(node->children[0], os);
            }
            break;

        case ASTNodeType::BinaryOp:
            if (node->value == "*") {
                pretty_print_factor(node->children[0], os);
                os << " ";
                pretty_print_factor(node->children[1], os);
            } else if (node->value == "/") {
                os << "\\frac{";
                pretty_print_factor(node->children[0], os);
                os << "}{";
                pretty_print_factor(node->children[1], os);
                os << "}";
            } else if (node->value == "^") {
                pretty_print_factor(node->children[0], os);
                os << "^{"; 
                pretty_print_factor(node->children[1], os); 
                os << "}";
            } else if (node->value == "-") {
                // Parenthésage possible si sous-expressions sont complexes
                pretty_print_factor(node->children[0], os);
                os << " - ";
                pretty_print_factor(node->children[1], os);
            } else if (node->value == "+") {
                pretty_print_factor(node->children[0], os);
                os << " + ";
                pretty_print_factor(node->children[1], os);
            } else {
                // fallback : affiche binaire inconnu
                pretty_print_factor(node->children[0], os);
                os << node->value;
                pretty_print_factor(node->children[1], os);
            }
            break;

        default:
            os << "?";
            break;
    }
}
