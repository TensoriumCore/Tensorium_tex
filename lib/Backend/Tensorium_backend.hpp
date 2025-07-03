
#pragma once

#include "../Frontend/Tensorium_AST.hpp"
namespace Tensorium {
	class Backend {
		public:
			virtual ~Backend() = default;
			virtual void generate(const tensorium::ASTNode& root) = 0;
	};
}
