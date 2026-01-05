df_dice_morgan <- read.csv('C:/Users/Sossey/Documents/chemoinformatic/data/dice_morgan_QSAR_result.csv')
names(df_dice_morgan)
cor_mat <- cor(df_dice_morgan)
library(corrplot)
corrplot(cor_mat,
         type = 'upper',
         tl.srt = 45,
         tl.cex = 0.5)
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

