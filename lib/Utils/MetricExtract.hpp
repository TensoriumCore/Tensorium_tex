
#pragma once
#include <memory>
#include <vector>
#include "../Frontend/Tensorium_AST.hpp"
namespace tensorium {
	struct MetricComponent {
		std::string variable;
		std::pair<std::string, std::string> indices;
		std::shared_ptr<ASTNode> factor;
	};
	std::vector<MetricComponent> extract_metric_terms(const std::shared_ptr<ASTNode>& node, std::shared_ptr<ASTNode> facteur = nullptr);
}

