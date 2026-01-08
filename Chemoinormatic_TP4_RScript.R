df_dice_morgan <- read.csv('C:/Users/Sossey/Documents/chemoinformatic/data/dice_morgan_QSAR_result.csv')
model <- lm(Prediction..pIC50. ~ ., data = df_dice_morgan)
summary(model)
coefs <- coef(model)
cat("pIC50 = ",
    paste0(round(coefs[1], 4), " + "),
    paste(
      paste0(round(coefs[-1], 4), " * ", names(coefs)[-1]),
      collapse = " + "
    ),
    "\n")

