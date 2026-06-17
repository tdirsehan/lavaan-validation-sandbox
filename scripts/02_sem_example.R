library(lavaan)

data("HolzingerSwineford1939")

sem_model <- '
  visual  =~ x1 + x2 + x3
  textual =~ x4 + x5 + x6
  speed   =~ x7 + x8 + x9

  textual ~ visual
  speed   ~ visual + textual
'

fit_sem <- sem(
  model = sem_model,
  data = HolzingerSwineford1939
)

summary(
  fit_sem,
  fit.measures = TRUE,
  standardized = TRUE,
  rsquare = TRUE
)

parameterEstimates(fit_sem, standardized = TRUE)
