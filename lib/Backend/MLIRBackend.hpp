#pragma once
#include "Tensorium_backend.hpp"
#include <iostream>
#include <fstream>

namespace Tensorium {
	class MLIRBackend : public Backend {
	public:
		MLIRBackend(const std::string& outname = "output.mlir")
			: outname(outname) {}
		void generate(const std::shared_ptr<tensorium::ASTNode>& root) override;
	private:
		std::string outname;
	};
}
