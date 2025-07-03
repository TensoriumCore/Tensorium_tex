
// lib/Backend/PrintBackend.hpp
#pragma once
#include "Tensorium_backend.hpp"
#include <iostream>
namespace Tensorium {
	class PrintBackend : public Backend {
		public:
			void generate(const tensorium::ASTNode& root) override;
	};
} // namespace Tensorium
