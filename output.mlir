func.func @main(%_Gamma: f64, %_gamma: f64, %il: f64, %j: f64, %k: f64, %l: f64) {
  %0 = arith.constant 1.0 : f64
  %1 = arith.constant 2.0 : f64
  %2 = arith.divf %0, %1 : f64
  // assignment: %_Gamma = %2
  %3 = math.powf %_gamma, %il : f64
  %4 = arith.mulf %_Gamma, %3 : f64
  return
}

func.func @main(%M: f64, %_rho: f64, %dt: f64, %r: f64) {
  %0 = arith.constant 1.0 : f64
  %1 = arith.constant 2.0 : f64
  %2 = arith.mulf %1, %M : f64
  %3 = arith.constant 2.0 : f64
  %4 = math.powf %_rho, %3 : f64
  %5 = arith.divf %2, %4 : f64
  %6 = arith.subf %0, %5 : f64
  %7 = arith.constant 0 : f64
  %8 = arith.subf %7, %6 : f64
  %9 = arith.constant 2.0 : f64
  %10 = math.powf %dt, %9 : f64
  %11 = arith.mulf %8, %10 : f64
  return
}

func.func @main(%M: f64, %_rho: f64, %_sin: f64, %_theta: f64, %a: f64, %d_phi: f64, %dt: f64, %r: f64) {
  %0 = arith.constant 4.0 : f64
  %1 = arith.mulf %0, %M : f64
  %2 = arith.constant 2.0 : f64
  %3 = math.powf %_rho, %2 : f64
  %4 = arith.divf %1, %3 : f64
  %5 = arith.constant 0 : f64
  %6 = arith.subf %5, %4 : f64
  %7 = arith.mulf %6, %dt : f64
  return
}

func.func @main(%_Delta: f64, %_rho: f64, %dr: f64) {
  %0 = arith.constant 2.0 : f64
  %1 = math.powf %_rho, %0 : f64
  %2 = arith.divf %1, %_Delta : f64
  %3 = arith.constant 2.0 : f64
  %4 = math.powf %dr, %3 : f64
  %5 = arith.mulf %2, %4 : f64
  return
}

func.func @main(%_rho: f64, %d_theta: f64) {
  %0 = arith.constant 2.0 : f64
  %1 = math.powf %_rho, %0 : f64
  %2 = arith.constant 2.0 : f64
  %3 = math.powf %d_theta, %2 : f64
  %4 = arith.mulf %1, %3 : f64
  return
}

func.func @main(%M: f64, %_rho: f64, %_sin: f64, %_theta: f64, %a: f64, %d_phi: f64, %r: f64) {
  %0 = arith.constant 2.0 : f64
  %1 = math.powf %r, %0 : f64
  %2 = arith.addf %1, %a : f64
  %3 = arith.constant 2.0 : f64
  %4 = math.powf %2, %3 : f64
  %5 = arith.constant 2.0 : f64
  %6 = arith.mulf %5, %M : f64
  %7 = arith.constant 2.0 : f64
  %8 = math.powf %_rho, %7 : f64
  %9 = arith.divf %6, %8 : f64
  %10 = arith.addf %4, %9 : f64
  %11 = arith.constant 2.0 : f64
  %12 = math.powf %_sin, %11 : f64
  %13 = arith.mulf %10, %12 : f64
  return
}

func.func @main(%M: f64, %_rho: f64, %dt: f64, %r: f64) {
  %0 = arith.constant 1.0 : f64
  %1 = arith.constant 2.0 : f64
  %2 = arith.mulf %1, %M : f64
  %3 = arith.constant 2.0 : f64
  %4 = math.powf %_rho, %3 : f64
  %5 = arith.divf %2, %4 : f64
  %6 = arith.subf %0, %5 : f64
  %7 = arith.constant 0 : f64
  %8 = arith.subf %7, %6 : f64
  %9 = arith.constant 2.0 : f64
  %10 = math.powf %dt, %9 : f64
  %11 = arith.mulf %8, %10 : f64
  return
}

func.func @main(%M: f64, %_rho: f64, %_sin: f64, %_theta: f64, %a: f64, %d_phi: f64, %dt: f64, %r: f64) {
  %0 = arith.constant 4.0 : f64
  %1 = arith.mulf %0, %M : f64
  %2 = arith.constant 2.0 : f64
  %3 = math.powf %_rho, %2 : f64
  %4 = arith.divf %1, %3 : f64
  %5 = arith.constant 0 : f64
  %6 = arith.subf %5, %4 : f64
  %7 = arith.mulf %6, %dt : f64
  return
}

func.func @main(%_Delta: f64, %_rho: f64, %dr: f64) {
  %0 = arith.constant 2.0 : f64
  %1 = math.powf %_rho, %0 : f64
  %2 = arith.divf %1, %_Delta : f64
  %3 = arith.constant 2.0 : f64
  %4 = math.powf %dr, %3 : f64
  %5 = arith.mulf %2, %4 : f64
  return
}

func.func @main(%_rho: f64, %d_theta: f64) {
  %0 = arith.constant 2.0 : f64
  %1 = math.powf %_rho, %0 : f64
  %2 = arith.constant 2.0 : f64
  %3 = math.powf %d_theta, %2 : f64
  %4 = arith.mulf %1, %3 : f64
  return
}

func.func @main(%M: f64, %_rho: f64, %_sin: f64, %_theta: f64, %a: f64, %d_phi: f64, %r: f64) {
  %0 = arith.constant 2.0 : f64
  %1 = math.powf %r, %0 : f64
  %2 = arith.addf %1, %a : f64
  %3 = arith.constant 2.0 : f64
  %4 = math.powf %2, %3 : f64
  %5 = arith.constant 2.0 : f64
  %6 = arith.mulf %5, %M : f64
  %7 = arith.constant 2.0 : f64
  %8 = math.powf %_rho, %7 : f64
  %9 = arith.divf %6, %8 : f64
  %10 = arith.addf %4, %9 : f64
  %11 = arith.constant 2.0 : f64
  %12 = math.powf %_sin, %11 : f64
  %13 = arith.mulf %10, %12 : f64
  return
}

