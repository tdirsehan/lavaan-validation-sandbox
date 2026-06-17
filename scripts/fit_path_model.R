# fit_path_model.R
# Example path model using lavaan

library(lavaan)

# Example dataset
data("HolzingerSwineford1939")

# Path model
model <- '
  visual =~ x1 + x2 + x3
  textual =~ x4 + x5 + x6
  speed =~ x7 + x8 + x9

  textual ~ visual
  speed ~ visual + textual
'

# Fit the model
fit <- sem(model, data = HolzingerSwineford1939)

# Print results
summary(fit, fit.measures = TRUE, standardized = TRUE)
