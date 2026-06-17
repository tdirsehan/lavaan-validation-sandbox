# lavaan-validation-sandbox

[![R tests](https://github.com/tdirsehan/lavaan-validation-sandbox/actions/workflows/r-tests.yml/badge.svg)](https://github.com/tdirsehan/lavaan-validation-sandbox/actions/workflows/r-tests.yml)

A small public portfolio project demonstrating reproducible **CFA**, **SEM**, and **path model** examples in R using the `lavaan` package. The repository also includes basic automated tests with `testthat` and a GitHub Actions workflow for continuous validation.

## Purpose

This repository was created as a compact research software example for structural equation modeling workflows. It illustrates how simple lavaan models can be written, tested, and validated in a reproducible way.

The project may be useful for demonstrating:

* Confirmatory factor analysis examples with `lavaan`
* SEM and path model examples in R
* Basic test-driven checks for model convergence
* Reproducible research workflows using GitHub Actions

## Repository structure

```text
lavaan-validation-sandbox
├── scripts
│   ├── 01_cfa_example.R
│   ├── 02_sem_example.R
│   └── fit_path_model.R
├── tests
│   └── testthat
│       └── test_lavaan_models.R
├── .github
│   └── workflows
│       └── r-tests.yml
└── README.md
```

## Example scripts

The `scripts` folder includes basic lavaan examples:

```text
01_cfa_example.R       # Confirmatory factor analysis example
02_sem_example.R       # Structural equation model example
fit_path_model.R       # Path model example
```

These examples use the built-in `HolzingerSwineford1939` dataset available in the `lavaan` package.

## Automated tests

The repository includes basic `testthat` checks to verify that the lavaan models run successfully and converge.

The test file is located at:

```text
tests/testthat/test_lavaan_models.R
```

The tests are automatically executed through GitHub Actions whenever changes are pushed to the repository.

## How to run locally

Install the required R packages:

```r
install.packages(c("lavaan", "testthat"))
```

Run the example scripts:

```r
source("scripts/01_cfa_example.R")
source("scripts/02_sem_example.R")
source("scripts/fit_path_model.R")
```

Run the tests:

```r
testthat::test_dir("tests/testthat")
```

## Packages used

* `lavaan`
* `testthat`

## Status

The repository includes a working GitHub Actions workflow for automated R testing.

