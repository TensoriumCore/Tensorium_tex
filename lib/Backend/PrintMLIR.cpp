
#include "PrintBackend.hpp"

namespace Tensorium {

	void PrintBackend::generate(const tensorium::ASTNode& root) {
		root.print(std::cout, 0);
	}
} // namespace Tensorium
