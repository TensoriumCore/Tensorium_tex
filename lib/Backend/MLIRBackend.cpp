
#include "MLIRBackend.hpp"

namespace Tensorium {

	int temp_counter = 0;
std::string emit_mlir(const std::shared_ptr<tensorium::ASTNode>& node, std::ostream& fout) {
	using namespace tensorium;
    if (node->type == ASTNodeType::Number) {
        std::string var = "%" + std::to_string(temp_counter++);
        fout << var << " = arith.constant " << node->value << " : f64\n";
        return var;
    }
    if (node->type == ASTNodeType::BinaryOp) {
        auto left = emit_mlir(node->children[0], fout);
        auto right = emit_mlir(node->children[1], fout);
        std::string var = "%" + std::to_string(temp_counter++);
        std::string op;
        if (node->value == "+") op = "arith.addf";
        else if (node->value == "-") op = "arith.subf";
        else if (node->value == "*") op = "arith.mulf";
        else if (node->value == "/") op = "arith.divf";
        else op = "arith.unknown";
        fout << var << " = " << op << " " << left << ", " << right << " : f64\n";
        return var;
    }
    return "%invalid";
}


void MLIRBackend::generate(const std::shared_ptr<tensorium::ASTNode>& root) {
    std::ofstream fout(outname, std::ios::app);
    emit_mlir(root, fout);
    fout.close();
}

}
