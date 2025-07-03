#include "PrintBackend.hpp"
#include "../Frontend/AST_Utils.hpp" // si print_ast est ici

namespace Tensorium {

	void PrintBackend::generate(const std::shared_ptr<tensorium::ASTNode>& root) {
		print_ast(root); // Utilise la version print_ast externe
	}
}
