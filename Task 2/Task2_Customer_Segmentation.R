library(ggplot2)
library(dplyr)

data("iris")
head(iris)
str(iris)

customer_data<-iris[,1:4]
head(customer_data)

set.seed(123)
customer_segments<- kmeans(customer_data, centers = 3)
customer_segments

iris$Segment<- customer_segments$cluster
head(iris)

ggplot(
  iris,aes(x=Petal.Length,y=Petal.Width, colour = as.factor(Segment))
) +
  geom_point(size=3)+ labs(title = "Customer Segmentation",x="Purchase Behaviour 1",
  y="Purchase Behaviour 2",colour="Segment") + theme_minimal()

table(iris$Segment)

Segment_summary <- iris %>%
  group_by(Segment) %>%
  summarise(
    avg_Sepal_length=mean(Sepal.Length),
    avg_Sepal_width=mean(Sepal.Width),
    avg_Petal_length=mean(Petal.Length),
    avg_Petal_width=mean(Petal.Width)
  )

print(Segment_summary)
