func.func @main() {
  // symbol: \Gamma as %\Gamma
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  %2 = arith.divf %0, %1 : f64
  // assignment: %\Gamma = %2
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %3 = arith.addf %invalid, %invalid : f64
  // unknown AST node type: Derivative
  %4 = arith.subf %3, %invalid : f64
  %5 = arith.mulf %\Gamma, %4 : f64
  return
}

func.func @main() {
  // symbol: \Gamma as %\Gamma
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  %2 = arith.divf %0, %1 : f64
  // assignment: %\Gamma = %2
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %3 = arith.addf %invalid, %invalid : f64
  // unknown AST node type: Derivative
  %4 = arith.subf %3, %invalid : f64
  %5 = arith.mulf %\Gamma, %4 : f64
  return
}

func.func @main() {
  // symbol: \Gamma as %\Gamma
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  %2 = arith.divf %0, %1 : f64
  // assignment: %\Gamma = %2
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %3 = arith.addf %invalid, %invalid : f64
  // unknown AST node type: Derivative
  %4 = arith.subf %3, %invalid : f64
  %5 = arith.mulf %\Gamma, %4 : f64
  return
}

