
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
void pretty_print_factor(const std::shared_ptr<tensorium::ASTNode>& node, std::ostream& os);
void flatten_sum(const std::shared_ptr<tensorium::ASTNode>& node,
                 std::vector<std::shared_ptr<tensorium::ASTNode>>& out,
                 int sign = 1);
