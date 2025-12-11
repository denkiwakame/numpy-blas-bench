# numpy-blas-bench
[![License][license-badge]][license-url]
[![Pixi Badge][pixi-badge]][pixi-url]

[license-badge]: https://img.shields.io/badge/license-BSD--3--Clause-blue?style=flat-square
[license-url]: https://opensource.org/license/bsd-3-clause
[pixi-badge]:https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/prefix-dev/pixi/main/assets/badge/v0.json&style=flat-square
[pixi-url]: https://pixi.sh

This repository provides an incredibly easy way to compare NumPy performance across the following builds on your machine:
- official PyPI NumPy wheel [pypi](https://pypi.org/project/numpy/)
- conda NumPy builds (OpenBLAS / MKL) [numpy](https://prefix.dev/channels/conda-forge/packages/numpy) [libblas](https://prefix.dev/channels/conda-forge/packages/libblas)
- official AOCL wheel [amd](https://www.amd.com/es/developer/zen-software-studio/applications/python-libraries-with-aocl.html)

## Installation

```
curl -fsSL https://pixi.sh/install.sh | sh
```

```
pixi install -a
```

## Benchmark

```
./benchmark.sh

```

### Individual Benchmark

```
pixi run -e pypi dot
pixi run -e openblas dot
pixi run -e mkl dot
pixi run -e aocl dot
pixi run -e blis dot
pixi run -e netlib dot
```

## Validation

```
 pixi list -e mkl | grep libblas
Environment: mkl
libblas           3.11.0      4_h5875eb1_mkl         18.4 KiB    conda  https://conda.anaconda.org/conda-forge/

 pixi list -e openblas | grep libblas
Environment: openblas
libblas           3.11.0      4_h4a7cf45_openblas   18.1 KiB    conda  https://conda.anaconda.org/conda-forge/
```

```
pixi run -e pypi doctor
pixi run -e openblas doctor
pixi run -e mkl doctor
pixi run -e aocl doctor
```

## License
This distribution includes third-party components.
See LICENSES/ for the corresponding licenses.
