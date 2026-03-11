library(dplyr)

# read data
mydata <- read.csv("slides/quarto_example/mydata.csv")

# construct scales
mydata <- mydata |>
  mutate(recall = rowMeans(data.frame(item1, item2)))


# compute regression
fit <- lm(recall ~ reading_skill, data = mydata)
summary(fit)



# forgot to recode negatively coded item
# (you should never recode into the same variable though...)
mydata$item2 <- 7 - mydata$item2
