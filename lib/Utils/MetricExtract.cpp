
#include "MetricExtract.hpp"
#include "../Frontend/Tensorium_AST.hpp"
#include <algorithm>

namespace tensorium {

	static std::string get_index_from_var(const std::string& var) {
		std::string idx = var;
		if (idx.size() > 1 && idx[0] == 'd')
			idx = idx.substr(1);
		if (!idx.empty() && idx[0] == '\\')
			idx = idx.substr(1);
		return idx;
	}

	static void flatten_product(const std::shared_ptr<ASTNode>& n,
			std::vector<std::shared_ptr<ASTNode>>& leaves) {
		if (n->type == ASTNodeType::BinaryOp && n->value == "*"
				&& n->children.size() == 2)
		{
			flatten_product(n->children[0], leaves);
			flatten_product(n->children[1], leaves);
		} else {
			leaves.push_back(n);
		}
	}

	std::vector<MetricComponent>
		extract_metric_terms(const std::shared_ptr<ASTNode>& node,
				std::shared_ptr<ASTNode> factor)
		{
			std::vector<MetricComponent> out;
			if (!node) return out;

			if (node->type == ASTNodeType::BinaryOp && node->value == "=") {
				return extract_metric_terms(node->children[1], factor);
			}
			if (node->type == ASTNodeType::BinaryOp && node->value == "+") {
				auto L = extract_metric_terms(node->children[0], factor);
				auto R = extract_metric_terms(node->children[1], factor);
				out.insert(out.end(), L.begin(), L.end());
				out.insert(out.end(), R.begin(), R.end());
				return out;
			}
			if (node->type == ASTNodeType::BinaryOp && node->value == "*") {
				std::vector<std::shared_ptr<ASTNode>> leaves;
				flatten_product(node, leaves);

				for (size_t i = 0; i < leaves.size(); ++i) {
					auto& leaf = leaves[i];

					if (leaf->type == ASTNodeType::BinaryOp && leaf->value == "^"
							&& leaf->children.size() == 2
							&& leaf->children[0]->type == ASTNodeType::Symbol
							&& leaf->children[1]->type == ASTNodeType::Number
							&& leaf->children[1]->value == "2")
					{
						std::string var = get_index_from_var(leaf->children[0]->value);
						std::shared_ptr<ASTNode> coeff = nullptr;
						for (size_t j = 0; j < leaves.size(); ++j) {
							if (j == i) continue;
							if (!coeff) coeff = leaves[j];
							else {
								coeff = std::make_shared<ASTNode>(
										ASTNodeType::BinaryOp, "*",
										std::vector{coeff, leaves[j]}
										);
							}
						}
						out.push_back({ "g", {var, var}, coeff ? coeff : factor });
					}
					else if (leaf->type == ASTNodeType::BinaryOp && leaf->value == "*"
							&& leaf->children.size() == 2
							&& leaf->children[0]->type == ASTNodeType::Symbol
							&& leaf->children[1]->type == ASTNodeType::Symbol)
					{
						std::string i1 = get_index_from_var(leaf->children[0]->value);
						std::string i2 = get_index_from_var(leaf->children[1]->value);
						std::shared_ptr<ASTNode> coeff = nullptr;
						for (size_t j = 0; j < leaves.size(); ++j) {
							if (j == i) continue;
							if (!coeff) coeff = leaves[j];
							else {
								coeff = std::make_shared<ASTNode>(
										ASTNodeType::BinaryOp, "*",
										std::vector{coeff, leaves[j]}
										);
							}
						}
						out.push_back({ "g", {i1, i2}, coeff ? coeff : factor });
					}
				}
				return out;
			}
			if (node->type == ASTNodeType::BinaryOp && node->value == "^"
					&& node->children.size() == 2
					&& node->children[0]->type == ASTNodeType::Symbol
					&& node->children[1]->type == ASTNodeType::Number
					&& node->children[1]->value == "2")
			{
				std::string idx = get_index_from_var(node->children[0]->value);
				out.push_back({ "g", {idx, idx}, factor });
				return out;
			}
			if (node->type == ASTNodeType::BinaryOp && node->value == "*"
					&& node->children.size() == 2
					&& node->children[0]->type == ASTNodeType::Symbol
					&& node->children[1]->type == ASTNodeType::Symbol)
			{
				std::string i1 = get_index_from_var(node->children[0]->value);
				std::string i2 = get_index_from_var(node->children[1]->value);
				out.push_back({ "g", {i1, i2}, factor });
				return out;
			}

			for (auto &c : node->children) {
				auto sub = extract_metric_terms(c, factor);
				out.insert(out.end(), sub.begin(), sub.end());
			}
			return out;
		}

} // namespace tensorium
