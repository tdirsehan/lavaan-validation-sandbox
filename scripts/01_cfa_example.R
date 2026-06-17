library(lavaan)

data("HolzingerSwineford1939")

cfa_model <- '
  visual  =~ x1 + x2 + x3
  textual =~ x4 + x5 + x6
  speed   =~ x7 + x8 + x9
'

fit_cfa <- cfa(
  model = cfa_model,
  data = HolzingerSwineford1939
)

summary(
  fit_cfa,
  fit.measures = TRUE,
  standardized = TRUE
)

fitMeasures(fit_cfa, c("cfi", "tli", "rmsea", "srmr"))
