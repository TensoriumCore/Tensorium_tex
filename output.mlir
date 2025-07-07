func.func @main() {
  // symbol: R as %R
  // symbol: \chi as %\chi
  %0 = arith.unknown %R, %\chi : f64
  %1 = arith.constant 1 : f64
  %2 = arith.constant 2 : f64
  %3 = arith.mulf %2, %\chi : f64
  %4 = arith.divf %1, %3 : f64
  // assignment: %0 = %4
  // symbol: D as %D
  %5 = arith.mulf %0, %D : f64
  %6 = arith.mulf %5, %D : f64
  %7 = arith.mulf %6, %\chi : f64
  %8 = arith.constant 1 : f64
  %9 = arith.constant 2 : f64
  %10 = arith.mulf %9, %\chi : f64
  %11 = arith.divf %8, %10 : f64
  %12 = arith.subf %7, %11 : f64
  // symbol: \gamma as %\gamma
  %13 = arith.mulf %12, %\gamma : f64
  %14 = arith.mulf %13, %D : f64
  %15 = arith.mulf %14, %D : f64
  %16 = arith.mulf %15, %\chi : f64
  %17 = arith.constant 1 : f64
  %18 = arith.constant 4 : f64
  %19 = arith.constant 2 : f64
  %20 = arith.unknown %\chi, %19 : f64
  %21 = arith.mulf %18, %20 : f64
  %22 = arith.divf %17, %21 : f64
  %23 = arith.addf %16, %22 : f64
  %24 = arith.mulf %23, %D : f64
  %25 = arith.mulf %24, %\chi : f64
  %26 = arith.mulf %25, %D : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.constant 3 : f64
  %29 = arith.constant 4 : f64
  %30 = arith.constant 2 : f64
  %31 = arith.unknown %\chi, %30 : f64
  %32 = arith.mulf %29, %31 : f64
  %33 = arith.divf %28, %32 : f64
  %34 = arith.subf %27, %33 : f64
  %35 = arith.mulf %34, %\gamma : f64
  %36 = arith.mulf %35, %D : f64
  %37 = arith.mulf %36, %\chi : f64
  %38 = arith.mulf %37, %D : f64
  %39 = arith.mulf %38, %\chi : f64
  return
}

