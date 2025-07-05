func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: M as %M
  %2 = arith.mulf %1, %M : f64
  // symbol: r as %r
  %3 = arith.mulf %2, %r : f64
  // symbol: \rho as %\rho
  %4 = arith.divf %3, %\rho : f64
  %5 = arith.subf %0, %4 : f64
  %6 = arith.constant 0 : f64
  %7 = arith.subf %6, %5 : f64
  // symbol: dt as %dt
  %8 = arith.mulf %7, %dt : f64
  return
}

func.func @main() {
  %9 = arith.constant 4 : f64
  // symbol: M as %M
  %10 = arith.mulf %9, %M : f64
  // symbol: a as %a
  %11 = arith.mulf %10, %a : f64
  // symbol: r as %r
  %12 = arith.mulf %11, %r : f64
  // symbol: \sin as %\sin
  %13 = arith.mulf %12, %\sin : f64
  // symbol: \theta as %\theta
  %14 = arith.mulf %13, %\theta : f64
  // symbol: \rho as %\rho
  %15 = arith.divf %14, %\rho : f64
  %16 = arith.constant 0 : f64
  %17 = arith.subf %16, %15 : f64
  // symbol: dt as %dt
  %18 = arith.mulf %17, %dt : f64
  // symbol: d\phi as %d\phi
  %19 = arith.mulf %18, %d\phi : f64
  return
}

func.func @main() {
  // symbol: \rho as %\rho
  // symbol: \Delta as %\Delta
  %20 = arith.divf %\rho, %\Delta : f64
  // symbol: dr as %dr
  %21 = arith.mulf %20, %dr : f64
  return
}

func.func @main() {
  // symbol: \rho as %\rho
  // symbol: d\theta as %d\theta
  %22 = arith.mulf %\rho, %d\theta : f64
  return
}

func.func @main() {
  // symbol: r as %r
  // symbol: a as %a
  %23 = arith.addf %r, %a : f64
  %24 = arith.constant 2 : f64
  // symbol: M as %M
  %25 = arith.mulf %24, %M : f64
  %26 = arith.mulf %25, %a : f64
  %27 = arith.mulf %26, %r : f64
  // symbol: \sin as %\sin
  %28 = arith.mulf %27, %\sin : f64
  // symbol: \theta as %\theta
  %29 = arith.mulf %28, %\theta : f64
  // symbol: \rho as %\rho
  %30 = arith.divf %29, %\rho : f64
  %31 = arith.addf %23, %30 : f64
  %32 = arith.mulf %31, %\sin : f64
  %33 = arith.mulf %32, %\theta : f64
  // symbol: d\phi as %d\phi
  %34 = arith.mulf %33, %d\phi : f64
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: M as %M
  %2 = arith.mulf %1, %M : f64
  // symbol: r as %r
  %3 = arith.divf %2, %r : f64
  %4 = arith.subf %0, %3 : f64
  return
}

func.func @main() {
  // symbol: dt as %dt
  // symbol: dr as %dr
  %5 = arith.constant 1 : f64
  %6 = arith.constant 2 : f64
  %7 = arith.subf %5, %6 : f64
  // symbol: M as %M
  %8 = arith.mulf %7, %M : f64
  // symbol: r as %r
  %9 = arith.divf %8, %r : f64
  %10 = arith.divf %dr, %9 : f64
  %11 = arith.addf %dt, %10 : f64
  %12 = arith.addf %11, %r : f64
  // symbol: d\theta as %d\theta
  %13 = arith.mulf %12, %d\theta : f64
  %14 = arith.addf %13, %r : f64
  // symbol: \sin as %\sin
  %15 = arith.mulf %14, %\sin : f64
  // symbol: \theta as %\theta
  %16 = arith.mulf %15, %\theta : f64
  // symbol: d\phi as %d\phi
  %17 = arith.mulf %16, %d\phi : f64
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: M as %M
  %2 = arith.mulf %1, %M : f64
  // symbol: r as %r
  %3 = arith.mulf %2, %r : f64
  // symbol: \rho as %\rho
  %4 = arith.divf %3, %\rho : f64
  %5 = arith.subf %0, %4 : f64
  %6 = arith.constant 0 : f64
  %7 = arith.subf %6, %5 : f64
  // symbol: dt as %dt
  %8 = arith.mulf %7, %dt : f64
  %9 = arith.constant 4 : f64
  %10 = arith.mulf %9, %M : f64
  // symbol: a as %a
  %11 = arith.mulf %10, %a : f64
  %12 = arith.mulf %11, %r : f64
  // symbol: \sin as %\sin
  %13 = arith.mulf %12, %\sin : f64
  // symbol: \theta as %\theta
  %14 = arith.mulf %13, %\theta : f64
  %15 = arith.divf %14, %\rho : f64
  %16 = arith.subf %8, %15 : f64
  %17 = arith.mulf %16, %dt : f64
  // symbol: d\phi as %d\phi
  %18 = arith.mulf %17, %d\phi : f64
  // symbol: \Delta as %\Delta
  %19 = arith.divf %\rho, %\Delta : f64
  %20 = arith.addf %18, %19 : f64
  // symbol: dr as %dr
  %21 = arith.mulf %20, %dr : f64
  %22 = arith.addf %21, %\rho : f64
  // symbol: d\theta as %d\theta
  %23 = arith.mulf %22, %d\theta : f64
  %24 = arith.addf %r, %a : f64
  %25 = arith.constant 2 : f64
  %26 = arith.mulf %25, %M : f64
  %27 = arith.mulf %26, %a : f64
  %28 = arith.mulf %27, %r : f64
  %29 = arith.mulf %28, %\sin : f64
  %30 = arith.mulf %29, %\theta : f64
  %31 = arith.divf %30, %\rho : f64
  %32 = arith.addf %24, %31 : f64
  %33 = arith.addf %23, %32 : f64
  %34 = arith.mulf %33, %\sin : f64
  %35 = arith.mulf %34, %\theta : f64
  %36 = arith.mulf %35, %d\phi : f64
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: M as %M
  %2 = arith.mulf %1, %M : f64
  // symbol: r as %r
  %3 = arith.mulf %2, %r : f64
  // symbol: \rho as %\rho
  %4 = arith.divf %3, %\rho : f64
  %5 = arith.subf %0, %4 : f64
  %6 = arith.constant 0 : f64
  %7 = arith.subf %6, %5 : f64
  // symbol: dt as %dt
  %8 = arith.mulf %7, %dt : f64
  %9 = arith.constant 4 : f64
  %10 = arith.mulf %9, %M : f64
  // symbol: a as %a
  %11 = arith.mulf %10, %a : f64
  %12 = arith.mulf %11, %r : f64
  // symbol: \sin as %\sin
  %13 = arith.mulf %12, %\sin : f64
  // symbol: \theta as %\theta
  %14 = arith.mulf %13, %\theta : f64
  %15 = arith.divf %14, %\rho : f64
  %16 = arith.subf %8, %15 : f64
  %17 = arith.mulf %16, %dt : f64
  // symbol: d\phi as %d\phi
  %18 = arith.mulf %17, %d\phi : f64
  // symbol: \Delta as %\Delta
  %19 = arith.divf %\rho, %\Delta : f64
  %20 = arith.addf %18, %19 : f64
  // symbol: dr as %dr
  %21 = arith.mulf %20, %dr : f64
  %22 = arith.addf %21, %\rho : f64
  // symbol: d\theta as %d\theta
  %23 = arith.mulf %22, %d\theta : f64
  %24 = arith.addf %r, %a : f64
  %25 = arith.constant 2 : f64
  %26 = arith.mulf %25, %M : f64
  %27 = arith.mulf %26, %a : f64
  %28 = arith.mulf %27, %r : f64
  %29 = arith.mulf %28, %\sin : f64
  %30 = arith.mulf %29, %\theta : f64
  %31 = arith.divf %30, %\rho : f64
  %32 = arith.addf %24, %31 : f64
  %33 = arith.addf %23, %32 : f64
  %34 = arith.mulf %33, %\sin : f64
  %35 = arith.mulf %34, %\theta : f64
  %36 = arith.mulf %35, %d\phi : f64
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: M as %M
  %2 = arith.mulf %1, %M : f64
  // symbol: r as %r
  %3 = arith.mulf %2, %r : f64
  // symbol: \rho as %\rho
  %4 = arith.divf %3, %\rho : f64
  %5 = arith.subf %0, %4 : f64
  %6 = arith.constant 0 : f64
  %7 = arith.subf %6, %5 : f64
  // symbol: dt as %dt
  %8 = arith.mulf %7, %dt : f64
  %9 = arith.constant 4 : f64
  %10 = arith.mulf %9, %M : f64
  // symbol: a as %a
  %11 = arith.mulf %10, %a : f64
  %12 = arith.mulf %11, %r : f64
  // symbol: \sin as %\sin
  %13 = arith.mulf %12, %\sin : f64
  // symbol: \theta as %\theta
  %14 = arith.mulf %13, %\theta : f64
  %15 = arith.divf %14, %\rho : f64
  %16 = arith.subf %8, %15 : f64
  %17 = arith.mulf %16, %dt : f64
  // symbol: d\phi as %d\phi
  %18 = arith.mulf %17, %d\phi : f64
  // symbol: \Delta as %\Delta
  %19 = arith.divf %\rho, %\Delta : f64
  %20 = arith.addf %18, %19 : f64
  // symbol: dr as %dr
  %21 = arith.mulf %20, %dr : f64
  %22 = arith.addf %21, %\rho : f64
  // symbol: d\theta as %d\theta
  %23 = arith.mulf %22, %d\theta : f64
  %24 = arith.addf %r, %a : f64
  %25 = arith.constant 2 : f64
  %26 = arith.mulf %25, %M : f64
  %27 = arith.mulf %26, %a : f64
  %28 = arith.mulf %27, %r : f64
  %29 = arith.mulf %28, %\sin : f64
  %30 = arith.mulf %29, %\theta : f64
  %31 = arith.divf %30, %\rho : f64
  %32 = arith.addf %24, %31 : f64
  %33 = arith.addf %23, %32 : f64
  %34 = arith.mulf %33, %\sin : f64
  %35 = arith.mulf %34, %\theta : f64
  %36 = arith.mulf %35, %d\phi : f64
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: M as %M
  %2 = arith.mulf %1, %M : f64
  // symbol: r as %r
  %3 = arith.mulf %2, %r : f64
  // symbol: \rho as %\rho
  %4 = arith.divf %3, %\rho : f64
  %5 = arith.subf %0, %4 : f64
  %6 = arith.constant 0 : f64
  %7 = arith.subf %6, %5 : f64
  // symbol: dt as %dt
  %8 = arith.mulf %7, %dt : f64
  %9 = arith.constant 4 : f64
  %10 = arith.mulf %9, %M : f64
  // symbol: a as %a
  %11 = arith.mulf %10, %a : f64
  %12 = arith.mulf %11, %r : f64
  // symbol: \sin as %\sin
  %13 = arith.mulf %12, %\sin : f64
  // symbol: \theta as %\theta
  %14 = arith.mulf %13, %\theta : f64
  %15 = arith.divf %14, %\rho : f64
  %16 = arith.subf %8, %15 : f64
  %17 = arith.mulf %16, %dt : f64
  // symbol: d\phi as %d\phi
  %18 = arith.mulf %17, %d\phi : f64
  // symbol: \Delta as %\Delta
  %19 = arith.divf %\rho, %\Delta : f64
  %20 = arith.addf %18, %19 : f64
  // symbol: dr as %dr
  %21 = arith.mulf %20, %dr : f64
  %22 = arith.addf %21, %\rho : f64
  // symbol: d\theta as %d\theta
  %23 = arith.mulf %22, %d\theta : f64
  %24 = arith.addf %r, %a : f64
  %25 = arith.constant 2 : f64
  %26 = arith.mulf %25, %M : f64
  %27 = arith.mulf %26, %a : f64
  %28 = arith.mulf %27, %r : f64
  %29 = arith.mulf %28, %\sin : f64
  %30 = arith.mulf %29, %\theta : f64
  %31 = arith.divf %30, %\rho : f64
  %32 = arith.addf %24, %31 : f64
  %33 = arith.addf %23, %32 : f64
  %34 = arith.mulf %33, %\sin : f64
  %35 = arith.mulf %34, %\theta : f64
  %36 = arith.mulf %35, %d\phi : f64
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: M as %M
  %2 = arith.mulf %1, %M : f64
  // symbol: r as %r
  %3 = arith.mulf %2, %r : f64
  // symbol: \rho as %\rho
  %4 = arith.divf %3, %\rho : f64
  %5 = arith.subf %0, %4 : f64
  %6 = arith.constant 0 : f64
  %7 = arith.subf %6, %5 : f64
  // symbol: dt as %dt
  %8 = arith.mulf %7, %dt : f64
  %9 = arith.constant 4 : f64
  %10 = arith.mulf %9, %M : f64
  // symbol: a as %a
  %11 = arith.mulf %10, %a : f64
  %12 = arith.mulf %11, %r : f64
  // symbol: \sin as %\sin
  %13 = arith.mulf %12, %\sin : f64
  // symbol: \theta as %\theta
  %14 = arith.mulf %13, %\theta : f64
  %15 = arith.divf %14, %\rho : f64
  %16 = arith.subf %8, %15 : f64
  %17 = arith.mulf %16, %dt : f64
  // symbol: d\phi as %d\phi
  %18 = arith.mulf %17, %d\phi : f64
  // symbol: \Delta as %\Delta
  %19 = arith.divf %\rho, %\Delta : f64
  %20 = arith.addf %18, %19 : f64
  // symbol: dr as %dr
  %21 = arith.mulf %20, %dr : f64
  %22 = arith.addf %21, %\rho : f64
  // symbol: d\theta as %d\theta
  %23 = arith.mulf %22, %d\theta : f64
  %24 = arith.addf %r, %a : f64
  %25 = arith.constant 2 : f64
  %26 = arith.mulf %25, %M : f64
  %27 = arith.mulf %26, %a : f64
  %28 = arith.mulf %27, %r : f64
  %29 = arith.mulf %28, %\sin : f64
  %30 = arith.mulf %29, %\theta : f64
  %31 = arith.divf %30, %\rho : f64
  %32 = arith.addf %24, %31 : f64
  %33 = arith.addf %23, %32 : f64
  %34 = arith.mulf %33, %\sin : f64
  %35 = arith.mulf %34, %\theta : f64
  %36 = arith.mulf %35, %d\phi : f64
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: M as %M
  %2 = arith.mulf %1, %M : f64
  // symbol: r as %r
  %3 = arith.mulf %2, %r : f64
  // symbol: \rho as %\rho
  %4 = arith.divf %3, %\rho : f64
  %5 = arith.subf %0, %4 : f64
  %6 = arith.constant 0 : f64
  %7 = arith.subf %6, %5 : f64
  // symbol: dt as %dt
  %8 = arith.mulf %7, %dt : f64
  %9 = arith.constant 4 : f64
  %10 = arith.mulf %9, %M : f64
  // symbol: a as %a
  %11 = arith.mulf %10, %a : f64
  %12 = arith.mulf %11, %r : f64
  // symbol: \sin as %\sin
  %13 = arith.mulf %12, %\sin : f64
  // symbol: \theta as %\theta
  %14 = arith.mulf %13, %\theta : f64
  %15 = arith.divf %14, %\rho : f64
  %16 = arith.subf %8, %15 : f64
  %17 = arith.mulf %16, %dt : f64
  // symbol: d\phi as %d\phi
  %18 = arith.mulf %17, %d\phi : f64
  // symbol: \Delta as %\Delta
  %19 = arith.divf %\rho, %\Delta : f64
  %20 = arith.addf %18, %19 : f64
  // symbol: dr as %dr
  %21 = arith.mulf %20, %dr : f64
  %22 = arith.addf %21, %\rho : f64
  // symbol: d\theta as %d\theta
  %23 = arith.mulf %22, %d\theta : f64
  %24 = arith.addf %r, %a : f64
  %25 = arith.constant 2 : f64
  %26 = arith.mulf %25, %M : f64
  %27 = arith.mulf %26, %a : f64
  %28 = arith.mulf %27, %r : f64
  %29 = arith.mulf %28, %\sin : f64
  %30 = arith.mulf %29, %\theta : f64
  %31 = arith.divf %30, %\rho : f64
  %32 = arith.addf %24, %31 : f64
  %33 = arith.addf %23, %32 : f64
  %34 = arith.mulf %33, %\sin : f64
  %35 = arith.mulf %34, %\theta : f64
  %36 = arith.mulf %35, %d\phi : f64
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: M as %M
  %2 = arith.mulf %1, %M : f64
  // symbol: r as %r
  %3 = arith.mulf %2, %r : f64
  // symbol: \rho as %\rho
  %4 = arith.divf %3, %\rho : f64
  %5 = arith.subf %0, %4 : f64
  %6 = arith.constant 0 : f64
  %7 = arith.subf %6, %5 : f64
  // symbol: dt as %dt
  %8 = arith.mulf %7, %dt : f64
  %9 = arith.constant 4 : f64
  %10 = arith.mulf %9, %M : f64
  // symbol: a as %a
  %11 = arith.mulf %10, %a : f64
  %12 = arith.mulf %11, %r : f64
  // symbol: \sin as %\sin
  %13 = arith.mulf %12, %\sin : f64
  // symbol: \theta as %\theta
  %14 = arith.mulf %13, %\theta : f64
  %15 = arith.divf %14, %\rho : f64
  %16 = arith.subf %8, %15 : f64
  %17 = arith.mulf %16, %dt : f64
  // symbol: d\phi as %d\phi
  %18 = arith.mulf %17, %d\phi : f64
  // symbol: \Delta as %\Delta
  %19 = arith.divf %\rho, %\Delta : f64
  %20 = arith.addf %18, %19 : f64
  // symbol: dr as %dr
  %21 = arith.mulf %20, %dr : f64
  %22 = arith.addf %21, %\rho : f64
  // symbol: d\theta as %d\theta
  %23 = arith.mulf %22, %d\theta : f64
  %24 = arith.addf %r, %a : f64
  %25 = arith.constant 2 : f64
  %26 = arith.mulf %25, %M : f64
  %27 = arith.mulf %26, %a : f64
  %28 = arith.mulf %27, %r : f64
  %29 = arith.mulf %28, %\sin : f64
  %30 = arith.mulf %29, %\theta : f64
  %31 = arith.divf %30, %\rho : f64
  %32 = arith.addf %24, %31 : f64
  %33 = arith.addf %23, %32 : f64
  %34 = arith.mulf %33, %\sin : f64
  %35 = arith.mulf %34, %\theta : f64
  %36 = arith.mulf %35, %d\phi : f64
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: M as %M
  %2 = arith.mulf %1, %M : f64
  // symbol: r as %r
  %3 = arith.mulf %2, %r : f64
  // symbol: \rho as %\rho
  %4 = arith.divf %3, %\rho : f64
  %5 = arith.subf %0, %4 : f64
  %6 = arith.constant 0 : f64
  %7 = arith.subf %6, %5 : f64
  // symbol: dt as %dt
  %8 = arith.mulf %7, %dt : f64
  return
}

func.func @main() {
  %9 = arith.constant 4 : f64
  // symbol: M as %M
  %10 = arith.mulf %9, %M : f64
  // symbol: a as %a
  %11 = arith.mulf %10, %a : f64
  // symbol: r as %r
  %12 = arith.mulf %11, %r : f64
  // symbol: \sin as %\sin
  %13 = arith.mulf %12, %\sin : f64
  // symbol: \theta as %\theta
  %14 = arith.mulf %13, %\theta : f64
  // symbol: \rho as %\rho
  %15 = arith.divf %14, %\rho : f64
  %16 = arith.constant 0 : f64
  %17 = arith.subf %16, %15 : f64
  // symbol: dt as %dt
  %18 = arith.mulf %17, %dt : f64
  // symbol: d\phi as %d\phi
  %19 = arith.mulf %18, %d\phi : f64
  return
}

func.func @main() {
  // symbol: \rho as %\rho
  // symbol: \Delta as %\Delta
  %20 = arith.divf %\rho, %\Delta : f64
  // symbol: dr as %dr
  %21 = arith.mulf %20, %dr : f64
  return
}

func.func @main() {
  // symbol: \rho as %\rho
  // symbol: d\theta as %d\theta
  %22 = arith.mulf %\rho, %d\theta : f64
  return
}

func.func @main() {
  // symbol: r as %r
  // symbol: a as %a
  %23 = arith.addf %r, %a : f64
  %24 = arith.constant 2 : f64
  // symbol: M as %M
  %25 = arith.mulf %24, %M : f64
  %26 = arith.mulf %25, %a : f64
  %27 = arith.mulf %26, %r : f64
  // symbol: \sin as %\sin
  %28 = arith.mulf %27, %\sin : f64
  // symbol: \theta as %\theta
  %29 = arith.mulf %28, %\theta : f64
  // symbol: \rho as %\rho
  %30 = arith.divf %29, %\rho : f64
  %31 = arith.addf %23, %30 : f64
  %32 = arith.mulf %31, %\sin : f64
  %33 = arith.mulf %32, %\theta : f64
  // symbol: d\phi as %d\phi
  %34 = arith.mulf %33, %d\phi : f64
  return
}

