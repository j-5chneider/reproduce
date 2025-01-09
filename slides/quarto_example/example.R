library(rio)
library(dplyr)

# Daten einlesen
mydata <- import("slides/quarto_example/mydata.csv")

# Skala bilden
mydata <- mydata |>
  mutate(lernleistung = rowMeans(data.frame(item1, item2)))


# Regression
fit <- lm(lernleistung ~ lesekompetenz, data = mydata)
summary(fit)



# Vergessen: item2 umpolen
# (sollten Sie so nicht machen - in dieselbe Variable speichern)
mydata$item2 <- 7 - mydata$item2
