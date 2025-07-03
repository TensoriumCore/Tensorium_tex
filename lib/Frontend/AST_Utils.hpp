#pragma once

#include "Tensorium_AST.hpp"
#include "Tensorium_Tensor_Index.hpp"
#include <iostream>
#include <memory>
#include <string>

namespace tensorium {

	inline void print_ast(const std::shared_ptr<ASTNode>& node, int indent = 0) {
		if (!node) return;

		std::string pad(indent, ' ');
		std::cout << pad
			<< "Node: " << node->value
			<< " [Type=" << static_cast<int>(node->type) << "]\n";

		if (node->type == ASTNodeType::FunctionCall &&
				(node->value == "\\tilde" ||
				 node->value == "\\hat"   ||
				 node->value == "\\bar")) 
		{
			std::cout << pad << "  Decorator: " << node->value << "\n";
			if (!node->children.empty())
				print_ast(node->children[0], indent + 2);
			return;
		}

		if (node->type == ASTNodeType::TensorSymbol) {
			auto tensorNode = 
				std::dynamic_pointer_cast<TensorSymbolNode>(node);
			if (tensorNode) {
				for (const auto& idx : tensorNode->indices) {
					std::cout << pad << "  Index: " << idx.name
						<< " (" 
						<< (idx.variance == IndexVariance::Covariant
								? "covariant"
								: "contravariant")
						<< ")\n";
				}
			}
		}

		for (const auto& child : node->children) {
			print_ast(child, indent + 2);
		}
	}

	inline std::vector<std::string> extract_math_blocks(const std::string& input) {
		std::vector<std::string> blocks;
		size_t pos = 0;
		while ((pos = input.find('$', pos)) != std::string::npos) {
			size_t end = input.find('$', pos+1);
			if (end == std::string::npos) break;
			blocks.push_back(input.substr(pos+1, end-pos-1));
			pos = end + 1;
		}
		return blocks;
	}
} // namespace tensorium
