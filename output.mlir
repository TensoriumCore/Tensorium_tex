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

func.func @main() {
  %0 = arith.constant 2 : f64
  %1 = arith.constant 0 : f64
  %2 = arith.subf %1, %0 : f64
  // symbol: \alpha as %\alpha
  %3 = arith.mulf %2, %\alpha : f64
  // unknown AST node type: FunctionCall
  %4 = arith.mulf %3, %invalid : f64
  return
}

func.func @main() {
  // symbol: ij as %ij
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  return
}

func.func @main() {
  // symbol: ik as %ik
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: FunctionCall
  %5 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: jk as %jk
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  %6 = arith.constant 2 : f64
  %7 = arith.constant 3 : f64
  %8 = arith.divf %6, %7 : f64
  %9 = arith.subf %invalid, %8 : f64
  // unknown AST node type: FunctionCall
  %10 = arith.mulf %9, %invalid : f64
  return
}

func.func @main() {
  // symbol: ij as %ij
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // symbol: \beta as %\beta
  %11 = arith.addf %invalid, %\beta : f64
  // unknown AST node type: Derivative
  %12 = arith.mulf %11, %invalid : f64
  return
}

func.func @main() {
  // symbol: ij as %ij
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: FunctionCall
  return
}

func.func @main() {
  // symbol: ij as %ij
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: FunctionCall
  return
}

func.func @main() {
  // symbol: ij as %ij
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: FunctionCall
  return
}

func.func @main() {
  // symbol: ij as %ij
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: FunctionCall
  return
}

func.func @main() {
  // symbol: ij as %ij
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: FunctionCall
  return
}

func.func @main() {
  // symbol: ij as %ij
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  return
}

func.func @main() {
  // symbol: D as %D
  %2 = arith.constant 0 : f64
  %3 = arith.subf %2, %D : f64
  %4 = arith.mulf %3, %D : f64
  // symbol: \alpha as %\alpha
  %5 = arith.mulf %4, %\alpha : f64
  %6 = arith.addf %5, %\alpha : f64
  // symbol: R as %R
  %7 = arith.constant 8 : f64
  %8 = arith.subf %R, %7 : f64
  // symbol: \pi as %\pi
  %9 = arith.mulf %8, %\pi : f64
  // symbol: S as %S
  %10 = arith.mulf %9, %S : f64
  %11 = arith.mulf %6, %10 : f64
  return
}

func.func @main() {
  // symbol: TF as %TF
  return
}

func.func @main() {
  // unknown AST node type: UnaryOp
  // symbol: K as %K
  // symbol: A as %A
  %12 = arith.mulf %K, %A : f64
  %13 = arith.constant 2 : f64
  %14 = arith.subf %12, %13 : f64
  %15 = arith.mulf %14, %A : f64
  %16 = arith.mulf %15, %A : f64
  %17 = arith.mulf %invalid, %16 : f64
  // symbol: \beta as %\beta
  %18 = arith.addf %17, %\beta : f64
  // unknown AST node type: Derivative
  %19 = arith.mulf %18, %invalid : f64
  %20 = arith.addf %19, %A : f64
  // unknown AST node type: Derivative
  %21 = arith.mulf %20, %invalid : f64
  %22 = arith.addf %21, %A : f64
  // unknown AST node type: Derivative
  %23 = arith.mulf %22, %invalid : f64
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
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  // symbol: e as %e
  // unknown AST node type: Unknown
  %2 = arith.mulf %e, %invalid : f64
  // symbol: \alpha as %\alpha
  %3 = arith.addf %2, %\alpha : f64
  // symbol: K as %K
  // symbol: A as %A
  %4 = arith.mulf %K, %A : f64
  %5 = arith.constant 2 : f64
  %6 = arith.subf %4, %5 : f64
  %7 = arith.mulf %6, %A : f64
  %8 = arith.mulf %7, %A : f64
  %9 = arith.mulf %3, %8 : f64
  // symbol: \beta as %\beta
  %10 = arith.addf %9, %\beta : f64
  // unknown AST node type: Derivative
  %11 = arith.mulf %10, %invalid : f64
  %12 = arith.addf %11, %A : f64
  // unknown AST node type: Derivative
  %13 = arith.mulf %12, %invalid : f64
  %14 = arith.addf %13, %A : f64
  // unknown AST node type: Derivative
  %15 = arith.mulf %14, %invalid : f64
  return
}

func.func @main() {
  // unknown AST node type: Derivative
  // unknown AST node type: Derivative
  %0 = arith.addf %invalid, %invalid : f64
  return
}

func.func @main() {
  // symbol: \gamma as %\gamma
  // unknown AST node type: Derivative
  %1 = arith.mulf %\gamma, %invalid : f64
  return
}

func.func @main() {
  %2 = arith.constant 1 : f64
  %3 = arith.constant 2 : f64
  // symbol: \chi as %\chi
  %4 = arith.mulf %3, %\chi : f64
  %5 = arith.divf %2, %4 : f64
  // symbol: D as %D
  %6 = arith.mulf %5, %D : f64
  %7 = arith.mulf %6, %D : f64
  %8 = arith.mulf %7, %\chi : f64
  %9 = arith.constant 1 : f64
  %10 = arith.constant 2 : f64
  %11 = arith.mulf %10, %\chi : f64
  %12 = arith.divf %9, %11 : f64
  %13 = arith.subf %8, %12 : f64
  // symbol: \gamma as %\gamma
  %14 = arith.mulf %13, %\gamma : f64
  %15 = arith.mulf %14, %D : f64
  %16 = arith.mulf %15, %D : f64
  %17 = arith.mulf %16, %\chi : f64
  %18 = arith.constant 1 : f64
  %19 = arith.constant 4 : f64
  %20 = arith.mulf %19, %\chi : f64
  %21 = arith.divf %18, %20 : f64
  %22 = arith.addf %17, %21 : f64
  %23 = arith.mulf %22, %D : f64
  %24 = arith.mulf %23, %\chi : f64
  %25 = arith.mulf %24, %D : f64
  %26 = arith.mulf %25, %\chi : f64
  %27 = arith.constant 3 : f64
  %28 = arith.constant 4 : f64
  %29 = arith.mulf %28, %\chi : f64
  %30 = arith.divf %27, %29 : f64
  %31 = arith.subf %26, %30 : f64
  %32 = arith.mulf %31, %\gamma : f64
  %33 = arith.mulf %32, %D : f64
  %34 = arith.mulf %33, %\chi : f64
  %35 = arith.mulf %34, %D : f64
  %36 = arith.mulf %35, %\chi : f64
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: \chi as %\chi
  %2 = arith.mulf %1, %\chi : f64
  %3 = arith.divf %0, %2 : f64
  // symbol: D as %D
  %4 = arith.mulf %3, %D : f64
  %5 = arith.mulf %4, %D : f64
  %6 = arith.mulf %5, %\chi : f64
  %7 = arith.constant 1 : f64
  %8 = arith.constant 2 : f64
  %9 = arith.mulf %8, %\chi : f64
  %10 = arith.divf %7, %9 : f64
  %11 = arith.subf %6, %10 : f64
  // symbol: \gamma as %\gamma
  %12 = arith.mulf %11, %\gamma : f64
  %13 = arith.mulf %12, %D : f64
  %14 = arith.mulf %13, %D : f64
  %15 = arith.mulf %14, %\chi : f64
  %16 = arith.constant 1 : f64
  %17 = arith.constant 4 : f64
  %18 = arith.mulf %17, %\chi : f64
  %19 = arith.divf %16, %18 : f64
  %20 = arith.addf %15, %19 : f64
  %21 = arith.mulf %20, %D : f64
  %22 = arith.mulf %21, %\chi : f64
  %23 = arith.mulf %22, %D : f64
  %24 = arith.mulf %23, %\chi : f64
  %25 = arith.constant 3 : f64
  %26 = arith.constant 4 : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.divf %25, %27 : f64
  %29 = arith.subf %24, %28 : f64
  %30 = arith.mulf %29, %\gamma : f64
  %31 = arith.mulf %30, %D : f64
  %32 = arith.mulf %31, %\chi : f64
  %33 = arith.mulf %32, %D : f64
  %34 = arith.mulf %33, %\chi : f64
  return
}

func.func @main() {
  // symbol: R as %R
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: \chi as %\chi
  %2 = arith.mulf %1, %\chi : f64
  %3 = arith.divf %0, %2 : f64
  // assignment: %R = %3
  // symbol: D as %D
  %4 = arith.mulf %R, %D : f64
  %5 = arith.mulf %4, %D : f64
  %6 = arith.mulf %5, %\chi : f64
  %7 = arith.constant 1 : f64
  %8 = arith.constant 2 : f64
  %9 = arith.mulf %8, %\chi : f64
  %10 = arith.divf %7, %9 : f64
  %11 = arith.subf %6, %10 : f64
  // symbol: \gamma as %\gamma
  %12 = arith.mulf %11, %\gamma : f64
  %13 = arith.mulf %12, %D : f64
  %14 = arith.mulf %13, %D : f64
  %15 = arith.mulf %14, %\chi : f64
  %16 = arith.constant 1 : f64
  %17 = arith.constant 4 : f64
  %18 = arith.mulf %17, %\chi : f64
  %19 = arith.divf %16, %18 : f64
  %20 = arith.addf %15, %19 : f64
  %21 = arith.mulf %20, %D : f64
  %22 = arith.mulf %21, %\chi : f64
  %23 = arith.mulf %22, %D : f64
  %24 = arith.mulf %23, %\chi : f64
  %25 = arith.constant 3 : f64
  %26 = arith.constant 4 : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.divf %25, %27 : f64
  %29 = arith.subf %24, %28 : f64
  %30 = arith.mulf %29, %\gamma : f64
  %31 = arith.mulf %30, %D : f64
  %32 = arith.mulf %31, %\chi : f64
  %33 = arith.mulf %32, %D : f64
  %34 = arith.mulf %33, %\chi : f64
  return
}

func.func @main() {
  // symbol: R as %R
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: \chi as %\chi
  %2 = arith.mulf %1, %\chi : f64
  %3 = arith.divf %0, %2 : f64
  // assignment: %R = %3
  // symbol: D as %D
  %4 = arith.mulf %R, %D : f64
  %5 = arith.mulf %4, %D : f64
  %6 = arith.mulf %5, %\chi : f64
  %7 = arith.constant 1 : f64
  %8 = arith.constant 2 : f64
  %9 = arith.mulf %8, %\chi : f64
  %10 = arith.divf %7, %9 : f64
  %11 = arith.subf %6, %10 : f64
  // symbol: \gamma as %\gamma
  %12 = arith.mulf %11, %\gamma : f64
  %13 = arith.mulf %12, %D : f64
  %14 = arith.mulf %13, %D : f64
  %15 = arith.mulf %14, %\chi : f64
  %16 = arith.constant 1 : f64
  %17 = arith.constant 4 : f64
  %18 = arith.mulf %17, %\chi : f64
  %19 = arith.divf %16, %18 : f64
  %20 = arith.addf %15, %19 : f64
  %21 = arith.mulf %20, %D : f64
  %22 = arith.mulf %21, %\chi : f64
  %23 = arith.mulf %22, %D : f64
  %24 = arith.mulf %23, %\chi : f64
  %25 = arith.constant 3 : f64
  %26 = arith.constant 4 : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.divf %25, %27 : f64
  %29 = arith.subf %24, %28 : f64
  %30 = arith.mulf %29, %\gamma : f64
  %31 = arith.mulf %30, %D : f64
  %32 = arith.mulf %31, %\chi : f64
  %33 = arith.mulf %32, %D : f64
  %34 = arith.mulf %33, %\chi : f64
  return
}

func.func @main() {
  // symbol: R as %R
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: \chi as %\chi
  %2 = arith.mulf %1, %\chi : f64
  %3 = arith.divf %0, %2 : f64
  // assignment: %R = %3
  // symbol: D as %D
  %4 = arith.mulf %R, %D : f64
  %5 = arith.mulf %4, %D : f64
  %6 = arith.mulf %5, %\chi : f64
  %7 = arith.constant 1 : f64
  %8 = arith.constant 2 : f64
  %9 = arith.mulf %8, %\chi : f64
  %10 = arith.divf %7, %9 : f64
  %11 = arith.subf %6, %10 : f64
  // symbol: \gamma as %\gamma
  %12 = arith.mulf %11, %\gamma : f64
  %13 = arith.mulf %12, %D : f64
  %14 = arith.mulf %13, %D : f64
  %15 = arith.mulf %14, %\chi : f64
  %16 = arith.constant 1 : f64
  %17 = arith.constant 4 : f64
  %18 = arith.mulf %17, %\chi : f64
  %19 = arith.divf %16, %18 : f64
  %20 = arith.addf %15, %19 : f64
  %21 = arith.mulf %20, %D : f64
  %22 = arith.mulf %21, %\chi : f64
  %23 = arith.mulf %22, %D : f64
  %24 = arith.mulf %23, %\chi : f64
  %25 = arith.constant 3 : f64
  %26 = arith.constant 4 : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.divf %25, %27 : f64
  %29 = arith.subf %24, %28 : f64
  %30 = arith.mulf %29, %\gamma : f64
  %31 = arith.mulf %30, %D : f64
  %32 = arith.mulf %31, %\chi : f64
  %33 = arith.mulf %32, %D : f64
  %34 = arith.mulf %33, %\chi : f64
  return
}

func.func @main() {
  // symbol: R as %R
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: \chi as %\chi
  %2 = arith.mulf %1, %\chi : f64
  %3 = arith.divf %0, %2 : f64
  // assignment: %R = %3
  // symbol: D as %D
  %4 = arith.mulf %R, %D : f64
  %5 = arith.mulf %4, %D : f64
  %6 = arith.mulf %5, %\chi : f64
  %7 = arith.constant 1 : f64
  %8 = arith.constant 2 : f64
  %9 = arith.mulf %8, %\chi : f64
  %10 = arith.divf %7, %9 : f64
  %11 = arith.subf %6, %10 : f64
  // symbol: \gamma as %\gamma
  %12 = arith.mulf %11, %\gamma : f64
  %13 = arith.mulf %12, %D : f64
  %14 = arith.mulf %13, %D : f64
  %15 = arith.mulf %14, %\chi : f64
  %16 = arith.constant 1 : f64
  %17 = arith.constant 4 : f64
  %18 = arith.mulf %17, %\chi : f64
  %19 = arith.divf %16, %18 : f64
  %20 = arith.addf %15, %19 : f64
  %21 = arith.mulf %20, %D : f64
  %22 = arith.mulf %21, %\chi : f64
  %23 = arith.mulf %22, %D : f64
  %24 = arith.mulf %23, %\chi : f64
  %25 = arith.constant 3 : f64
  %26 = arith.constant 4 : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.divf %25, %27 : f64
  %29 = arith.subf %24, %28 : f64
  %30 = arith.mulf %29, %\gamma : f64
  %31 = arith.mulf %30, %D : f64
  %32 = arith.mulf %31, %\chi : f64
  %33 = arith.mulf %32, %D : f64
  %34 = arith.mulf %33, %\chi : f64
  return
}

func.func @main() {
  // symbol: R as %R
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: \chi as %\chi
  %2 = arith.mulf %1, %\chi : f64
  %3 = arith.divf %0, %2 : f64
  // assignment: %R = %3
  // symbol: D as %D
  %4 = arith.mulf %R, %D : f64
  %5 = arith.mulf %4, %D : f64
  %6 = arith.mulf %5, %\chi : f64
  %7 = arith.constant 1 : f64
  %8 = arith.constant 2 : f64
  %9 = arith.mulf %8, %\chi : f64
  %10 = arith.divf %7, %9 : f64
  %11 = arith.subf %6, %10 : f64
  // symbol: \gamma as %\gamma
  %12 = arith.mulf %11, %\gamma : f64
  %13 = arith.mulf %12, %D : f64
  %14 = arith.mulf %13, %D : f64
  %15 = arith.mulf %14, %\chi : f64
  %16 = arith.constant 1 : f64
  %17 = arith.constant 4 : f64
  %18 = arith.mulf %17, %\chi : f64
  %19 = arith.divf %16, %18 : f64
  %20 = arith.addf %15, %19 : f64
  %21 = arith.mulf %20, %D : f64
  %22 = arith.mulf %21, %\chi : f64
  %23 = arith.mulf %22, %D : f64
  %24 = arith.mulf %23, %\chi : f64
  %25 = arith.constant 3 : f64
  %26 = arith.constant 4 : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.divf %25, %27 : f64
  %29 = arith.subf %24, %28 : f64
  %30 = arith.mulf %29, %\gamma : f64
  %31 = arith.mulf %30, %D : f64
  %32 = arith.mulf %31, %\chi : f64
  %33 = arith.mulf %32, %D : f64
  %34 = arith.mulf %33, %\chi : f64
  return
}

func.func @main() {
  // symbol: R as %R
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: \chi as %\chi
  %2 = arith.mulf %1, %\chi : f64
  %3 = arith.divf %0, %2 : f64
  // assignment: %R = %3
  // symbol: D as %D
  %4 = arith.mulf %R, %D : f64
  %5 = arith.mulf %4, %D : f64
  %6 = arith.mulf %5, %\chi : f64
  %7 = arith.constant 1 : f64
  %8 = arith.constant 2 : f64
  %9 = arith.mulf %8, %\chi : f64
  %10 = arith.divf %7, %9 : f64
  %11 = arith.subf %6, %10 : f64
  // symbol: \gamma as %\gamma
  %12 = arith.mulf %11, %\gamma : f64
  %13 = arith.mulf %12, %D : f64
  %14 = arith.mulf %13, %D : f64
  %15 = arith.mulf %14, %\chi : f64
  %16 = arith.constant 1 : f64
  %17 = arith.constant 4 : f64
  %18 = arith.mulf %17, %\chi : f64
  %19 = arith.divf %16, %18 : f64
  %20 = arith.addf %15, %19 : f64
  %21 = arith.mulf %20, %D : f64
  %22 = arith.mulf %21, %\chi : f64
  %23 = arith.mulf %22, %D : f64
  %24 = arith.mulf %23, %\chi : f64
  %25 = arith.constant 3 : f64
  %26 = arith.constant 4 : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.divf %25, %27 : f64
  %29 = arith.subf %24, %28 : f64
  %30 = arith.mulf %29, %\gamma : f64
  %31 = arith.mulf %30, %D : f64
  %32 = arith.mulf %31, %\chi : f64
  %33 = arith.mulf %32, %D : f64
  %34 = arith.mulf %33, %\chi : f64
  return
}

func.func @main() {
  // symbol: R as %R
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: \chi as %\chi
  %2 = arith.mulf %1, %\chi : f64
  %3 = arith.divf %0, %2 : f64
  // assignment: %R = %3
  // symbol: D as %D
  %4 = arith.mulf %R, %D : f64
  %5 = arith.mulf %4, %D : f64
  %6 = arith.mulf %5, %\chi : f64
  %7 = arith.constant 1 : f64
  %8 = arith.constant 2 : f64
  %9 = arith.mulf %8, %\chi : f64
  %10 = arith.divf %7, %9 : f64
  %11 = arith.subf %6, %10 : f64
  // symbol: \gamma as %\gamma
  %12 = arith.mulf %11, %\gamma : f64
  %13 = arith.mulf %12, %D : f64
  %14 = arith.mulf %13, %D : f64
  %15 = arith.mulf %14, %\chi : f64
  %16 = arith.constant 1 : f64
  %17 = arith.constant 4 : f64
  %18 = arith.mulf %17, %\chi : f64
  %19 = arith.divf %16, %18 : f64
  %20 = arith.addf %15, %19 : f64
  %21 = arith.mulf %20, %D : f64
  %22 = arith.mulf %21, %\chi : f64
  %23 = arith.mulf %22, %D : f64
  %24 = arith.mulf %23, %\chi : f64
  %25 = arith.constant 3 : f64
  %26 = arith.constant 4 : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.divf %25, %27 : f64
  %29 = arith.subf %24, %28 : f64
  %30 = arith.mulf %29, %\gamma : f64
  %31 = arith.mulf %30, %D : f64
  %32 = arith.mulf %31, %\chi : f64
  %33 = arith.mulf %32, %D : f64
  %34 = arith.mulf %33, %\chi : f64
  return
}

func.func @main() {
  // symbol: \chi as %\chi
  return
}

func.func @main() {
  %0 = arith.constant 1 : f64
  %1 = arith.constant 2 : f64
  // symbol: \chi as %\chi
  %2 = arith.mulf %1, %\chi : f64
  %3 = arith.divf %0, %2 : f64
  // symbol: D as %D
  %4 = arith.mulf %3, %D : f64
  %5 = arith.mulf %4, %D : f64
  %6 = arith.mulf %5, %\chi : f64
  %7 = arith.constant 1 : f64
  %8 = arith.constant 2 : f64
  %9 = arith.mulf %8, %\chi : f64
  %10 = arith.divf %7, %9 : f64
  %11 = arith.subf %6, %10 : f64
  // symbol: \gamma as %\gamma
  %12 = arith.mulf %11, %\gamma : f64
  %13 = arith.mulf %12, %D : f64
  %14 = arith.mulf %13, %D : f64
  %15 = arith.mulf %14, %\chi : f64
  %16 = arith.constant 1 : f64
  %17 = arith.constant 4 : f64
  %18 = arith.mulf %17, %\chi : f64
  %19 = arith.constant 2 : f64
  %20 = arith.unknown %18, %19 : f64
  %21 = arith.divf %16, %20 : f64
  %22 = arith.addf %15, %21 : f64
  %23 = arith.mulf %22, %D : f64
  %24 = arith.mulf %23, %\chi : f64
  %25 = arith.mulf %24, %D : f64
  %26 = arith.mulf %25, %\chi : f64
  %27 = arith.constant 3 : f64
  %28 = arith.constant 4 : f64
  %29 = arith.mulf %28, %\chi : f64
  %30 = arith.constant 2 : f64
  %31 = arith.unknown %29, %30 : f64
  %32 = arith.divf %27, %31 : f64
  %33 = arith.subf %26, %32 : f64
  %34 = arith.mulf %33, %\gamma : f64
  %35 = arith.mulf %34, %D : f64
  %36 = arith.mulf %35, %\chi : f64
  %37 = arith.mulf %36, %D : f64
  %38 = arith.mulf %37, %\chi : f64
  return
}

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
  %19 = arith.mulf %18, %\chi : f64
  %20 = arith.constant 2 : f64
  %21 = arith.unknown %19, %20 : f64
  %22 = arith.divf %17, %21 : f64
  %23 = arith.addf %16, %22 : f64
  %24 = arith.mulf %23, %D : f64
  %25 = arith.mulf %24, %\chi : f64
  %26 = arith.mulf %25, %D : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.constant 3 : f64
  %29 = arith.constant 4 : f64
  %30 = arith.mulf %29, %\chi : f64
  %31 = arith.constant 2 : f64
  %32 = arith.unknown %30, %31 : f64
  %33 = arith.divf %28, %32 : f64
  %34 = arith.subf %27, %33 : f64
  %35 = arith.mulf %34, %\gamma : f64
  %36 = arith.mulf %35, %D : f64
  %37 = arith.mulf %36, %\chi : f64
  %38 = arith.mulf %37, %D : f64
  %39 = arith.mulf %38, %\chi : f64
  return
}

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
  %19 = arith.mulf %18, %\chi : f64
  %20 = arith.constant 2 : f64
  %21 = arith.unknown %19, %20 : f64
  %22 = arith.divf %17, %21 : f64
  %23 = arith.addf %16, %22 : f64
  %24 = arith.mulf %23, %D : f64
  %25 = arith.mulf %24, %\chi : f64
  %26 = arith.mulf %25, %D : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.constant 3 : f64
  %29 = arith.constant 4 : f64
  %30 = arith.mulf %29, %\chi : f64
  %31 = arith.constant 2 : f64
  %32 = arith.unknown %30, %31 : f64
  %33 = arith.divf %28, %32 : f64
  %34 = arith.subf %27, %33 : f64
  %35 = arith.mulf %34, %\gamma : f64
  %36 = arith.mulf %35, %D : f64
  %37 = arith.mulf %36, %\chi : f64
  %38 = arith.mulf %37, %D : f64
  %39 = arith.mulf %38, %\chi : f64
  return
}

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
  %19 = arith.mulf %18, %\chi : f64
  %20 = arith.constant 2 : f64
  %21 = arith.unknown %19, %20 : f64
  %22 = arith.divf %17, %21 : f64
  %23 = arith.addf %16, %22 : f64
  %24 = arith.mulf %23, %D : f64
  %25 = arith.mulf %24, %\chi : f64
  %26 = arith.mulf %25, %D : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.constant 3 : f64
  %29 = arith.constant 4 : f64
  %30 = arith.mulf %29, %\chi : f64
  %31 = arith.constant 2 : f64
  %32 = arith.unknown %30, %31 : f64
  %33 = arith.divf %28, %32 : f64
  %34 = arith.subf %27, %33 : f64
  %35 = arith.mulf %34, %\gamma : f64
  %36 = arith.mulf %35, %D : f64
  %37 = arith.mulf %36, %\chi : f64
  %38 = arith.mulf %37, %D : f64
  %39 = arith.mulf %38, %\chi : f64
  return
}

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
  %19 = arith.mulf %18, %\chi : f64
  %20 = arith.constant 2 : f64
  %21 = arith.unknown %19, %20 : f64
  %22 = arith.divf %17, %21 : f64
  %23 = arith.addf %16, %22 : f64
  %24 = arith.mulf %23, %D : f64
  %25 = arith.mulf %24, %\chi : f64
  %26 = arith.mulf %25, %D : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.constant 3 : f64
  %29 = arith.constant 4 : f64
  %30 = arith.mulf %29, %\chi : f64
  %31 = arith.constant 2 : f64
  %32 = arith.unknown %30, %31 : f64
  %33 = arith.divf %28, %32 : f64
  %34 = arith.subf %27, %33 : f64
  %35 = arith.mulf %34, %\gamma : f64
  %36 = arith.mulf %35, %D : f64
  %37 = arith.mulf %36, %\chi : f64
  %38 = arith.mulf %37, %D : f64
  %39 = arith.mulf %38, %\chi : f64
  return
}

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
  %19 = arith.mulf %18, %\chi : f64
  %20 = arith.constant 2 : f64
  %21 = arith.unknown %19, %20 : f64
  %22 = arith.divf %17, %21 : f64
  %23 = arith.addf %16, %22 : f64
  %24 = arith.mulf %23, %D : f64
  %25 = arith.mulf %24, %\chi : f64
  %26 = arith.mulf %25, %D : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.constant 3 : f64
  %29 = arith.constant 4 : f64
  %30 = arith.mulf %29, %\chi : f64
  %31 = arith.constant 2 : f64
  %32 = arith.unknown %30, %31 : f64
  %33 = arith.divf %28, %32 : f64
  %34 = arith.subf %27, %33 : f64
  %35 = arith.mulf %34, %\gamma : f64
  %36 = arith.mulf %35, %D : f64
  %37 = arith.mulf %36, %\chi : f64
  %38 = arith.mulf %37, %D : f64
  %39 = arith.mulf %38, %\chi : f64
  return
}

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
  %19 = arith.mulf %18, %\chi : f64
  %20 = arith.constant 2 : f64
  %21 = arith.unknown %19, %20 : f64
  %22 = arith.divf %17, %21 : f64
  %23 = arith.addf %16, %22 : f64
  %24 = arith.mulf %23, %D : f64
  %25 = arith.mulf %24, %\chi : f64
  %26 = arith.mulf %25, %D : f64
  %27 = arith.mulf %26, %\chi : f64
  %28 = arith.constant 3 : f64
  %29 = arith.constant 4 : f64
  %30 = arith.mulf %29, %\chi : f64
  %31 = arith.constant 2 : f64
  %32 = arith.unknown %30, %31 : f64
  %33 = arith.divf %28, %32 : f64
  %34 = arith.subf %27, %33 : f64
  %35 = arith.mulf %34, %\gamma : f64
  %36 = arith.mulf %35, %D : f64
  %37 = arith.mulf %36, %\chi : f64
  %38 = arith.mulf %37, %D : f64
  %39 = arith.mulf %38, %\chi : f64
  return
}

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

