
#include "MetricExtract.hpp"
#include "../Frontend/Tensorium_AST.hpp"
#include "../Frontend/Tensorium_Tensor_Index.hpp"
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
		extract_metric_terms(const std::shared_ptr<ASTNode>& node, std::shared_ptr<ASTNode> factor)
		{
			std::vector<MetricComponent> out;
			if (!node) return out;

			if (node->type == ASTNodeType::BinaryOp && node->value == "=")
				return extract_metric_terms(node->children[1], factor);

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

				std::vector<std::string> indices;
				std::shared_ptr<ASTNode> coeff = nullptr;


				for (auto& leaf : leaves) {
					if (leaf->type == ASTNodeType::TensorSymbol) {
						auto sym = static_cast<TensorSymbolNode*>(leaf.get());
						if (sym->value.size() > 1 && sym->value[0] == 'd') {
							std::string var = sym->value.substr(1);
							int pow = 1;
							if (!sym->indices.empty()) {
								try { pow = std::stoi(sym->indices[0].name); }
								catch(...) { pow = 1; }
							}
							for (int i = 0; i < pow; ++i)
								indices.push_back(var);
							continue; 
						}
					}
					if (!coeff)
						coeff = leaf;
					else
						coeff = std::make_shared<ASTNode>(ASTNodeType::BinaryOp, "*", std::vector{coeff, leaf});
				}
				if (indices.size() == 2) {
					out.push_back({ "g", {indices[0], indices[1]}, coeff ? coeff : factor });
				} else if (indices.size() == 1) {
					out.push_back({ "g", {indices[0], indices[0]}, coeff ? coeff : factor });
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

			if (node->type == ASTNodeType::TensorSymbol) {
				auto sym = static_cast<TensorSymbolNode*>(node.get());
				if (sym->value.size() > 1 && sym->value[0] == 'd' && !sym->indices.empty()) {
					std::string var = sym->value.substr(1);
					int pow = 1;
					try { pow = std::stoi(sym->indices[0].name); }
					catch(...) { pow = 1; }
					if (pow == 2)
						out.push_back({ "g", {var, var}, factor });
				}
				return out;
			}

			for (auto& c : node->children) {
				auto sub = extract_metric_terms(c, factor);
				out.insert(out.end(), sub.begin(), sub.end());
			}
			return out;
		}
} // namespace tensorium
