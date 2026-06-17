# test_lavaan_models.R
# Basic tests for lavaan model examples

library(testthat)
library(lavaan)

test_that("CFA model runs successfully", {
  data("HolzingerSwineford1939")

  model <- '
    visual =~ x1 + x2 + x3
    textual =~ x4 + x5 + x6
    speed =~ x7 + x8 + x9
  '

  fit <- cfa(model, data = HolzingerSwineford1939)

  expect_s4_class(fit, "lavaan")
  expect_true(lavInspect(fit, "converged"))
})

test_that("SEM/path model runs successfully", {
  data("HolzingerSwineford1939")

  model <- '
    visual =~ x1 + x2 + x3
    textual =~ x4 + x5 + x6
    speed =~ x7 + x8 + x9

    textual ~ visual
    speed ~ visual + textual
  '

  fit <- sem(model, data = HolzingerSwineford1939)

  expect_s4_class(fit, "lavaan")
  expect_true(lavInspect(fit, "converged"))
})
