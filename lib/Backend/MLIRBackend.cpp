#include "MLIRBackend.hpp"
#include <fstream>
#include <unordered_map>

namespace Tensorium {

namespace {
    int temp_counter = 0;
    std::unordered_map<std::string, std::string> symbol_vars;

    std::string fresh_var() {
        return "%" + std::to_string(temp_counter++);
    }
}

std::string emit_mlir(const std::shared_ptr<tensorium::ASTNode>& node, std::ostream& fout, int indent = 2) {
    using namespace tensorium;
    std::string pad(indent, ' ');

    if (!node) return "%invalid";

    if (node->type == ASTNodeType::Number) {
        std::string var = fresh_var();
        fout << pad << var << " = arith.constant " << node->value << " : f64\n";
        return var;
    }

    if (node->type == ASTNodeType::Symbol || node->type == ASTNodeType::TensorSymbol) {
        auto it = symbol_vars.find(node->value);
        if (it != symbol_vars.end())
            return it->second;
        std::string var = "%" + node->value;
        symbol_vars[node->value] = var;
        fout << pad << "// symbol: " << node->value << " as " << var << "\n";
        return var;
    }

    if (node->type == ASTNodeType::UnaryOp) {
        if (node->value == "-") {
            auto rhs = emit_mlir(node->children[0], fout, indent);
            std::string zero = fresh_var();
            fout << pad << zero << " = arith.constant 0 : f64\n";
            std::string var = fresh_var();
            fout << pad << var << " = arith.subf " << zero << ", " << rhs << " : f64\n";
            return var;
        }
    }

    if (node->type == ASTNodeType::BinaryOp) {
        if (node->value == "=") {
            auto lhs = emit_mlir(node->children[0], fout, indent);
            auto rhs = emit_mlir(node->children[1], fout, indent);
            fout << pad << "// assignment: " << lhs << " = " << rhs << "\n";
            return lhs;
        }
        auto left = emit_mlir(node->children[0], fout, indent);
        auto right = emit_mlir(node->children[1], fout, indent);
        std::string var = fresh_var();
        std::string op;
        if (node->value == "+") op = "arith.addf";
        else if (node->value == "-") op = "arith.subf";
        else if (node->value == "*") op = "arith.mulf";
        else if (node->value == "/") op = "arith.divf";
        else op = "arith.unknown";
        fout << pad << var << " = " << op << " " << left << ", " << right << " : f64\n";
        return var;
    }


    fout << pad << "// unknown AST node type: " << to_string(node->type) << "\n";
    return "%invalid";
}

void MLIRBackend::generate(const std::shared_ptr<tensorium::ASTNode>& root) {
    std::ofstream fout(outname, std::ios::app);
    fout << "func.func @main() {\n";
    symbol_vars.clear(); 
    emit_mlir(root, fout, 2);
    fout << "  return\n}\n\n";
    fout.close();
}

} // namespace Tensorium
