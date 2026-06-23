library(ggplot2)
library(dplyr)

data("diamonds")

Sales_Data<- diamonds %>%
  transmute(
    Order_ID= row_number(), Product=cut, Quantity=1, Unit_price=price, Date=seq(
      from =as.Date( "2026-01-01"),by="day", length.out = n()), Revenue= Quantity*Unit_price
  )
View(Sales_Data)

total_Revenue<- sum(Sales_Data$Revenue)
total_Orders<- nrow(Sales_Data)
total_Quantity<- sum(Sales_Data$Quantity)
avg_order_value<-mean(Sales_Data$Revenue)
print(total_Revenue)
print(total_Orders)
print(total_Quantity)
print(avg_order_value)

product_revenue <- Sales_Data %>%
  group_by(Product) %>%
  summarise(
    Total_Revenue = sum(Revenue)
  )
print(product_revenue)

revenue_trend <- Sales_Data %>%
  mutate(Month = format(Date, "%Y-%m")) %>% 
  group_by(Month) %>%
  summarise(Monthly_Revenue = sum(Revenue))
print(revenue_trend)

print(ggplot(revenue_trend,aes(x = Month,y = Monthly_Revenue, group = 1)) +geom_line()+
        labs(
          title= "Monthly Revenue Trend",
          x= "Month",
          y= "Monthly Revenue")+
        theme_minimal()
)

print(ggplot(product_revenue, aes(x=Product,y=Total_Revenue, fill = Product))+ geom_col()+
  labs(
    title = "Revenue by Product",
    x="Product",
    y="Total Revenue") +
  theme_minimal()
)