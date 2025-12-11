#!/usr/bin/bash

BENCHS=(
  dot
  vdot
  svd
  cholesky
  eig
)

BACKENDS=(
  openblas
  mkl
  aocl
)

echo "🚀 Running BLAS comparison benchmark"
echo ""

for algo in "${BENCHS[@]}"; do
  echo "--------------------------------------"
  echo "🔬 Algorithm: $algo"
  echo "--------------------------------------"

  for backend in "${BACKENDS[@]}"; do
    echo "▶️  $backend ..."
    pixi run -e "$backend" "$algo"
    echo ""
  done

  echo "🎉 Finished algorithm: $algo"
  echo ""
done

echo "🏁 All benchmarks completed!"
