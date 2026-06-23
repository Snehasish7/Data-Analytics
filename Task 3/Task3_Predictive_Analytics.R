library(ggplot2)
data("mtcars")
head(mtcars)
str(mtcars)

model<- lm(mpg~hp, data = mtcars)
summary(model)

mtcars$Predicted_MPG <- predict(model)
head(mtcars)

ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_line(aes(y = Predicted_MPG), linewidth = 1) +
  labs(
    title = "Actual vs Predicted MPG",
    x = "Horsepower",
    y = "MPG"
  ) +
  theme_minimal()

predictions<- predict(model)
rmse<- sqrt(mean((mtcars$mpg- predictions)^2))
print(rmse)
