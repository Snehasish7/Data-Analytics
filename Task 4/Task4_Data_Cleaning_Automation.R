library(ggplot2)
library(dplyr)

data("airquality")
head(airquality)
str(airquality)

colSums(is.na(airquality))

clean_data<- airquality %>%
  mutate(
    Ozone=ifelse(is.na(Ozone), mean(Ozone, na.rm=TRUE),Ozone),
    Solar.R=ifelse(is.na(Ozone),mean(Solar.R, na.rm=TRUE),Solar.R))
head(clean_data)

clean_data<-distinct(clean_data)
nrow(clean_data)

report<-clean_data %>%
  summarise(
    Average_Ozone= mean(Ozone), Average_Solar_R=mean(Solar.R), Average_Wind= mean(Wind),
    Average_Temperature= mean(Temp)
  )
print(report)

print(ggplot(clean_data,aes(x=Temp,y=Ozone))+ geom_point()+
        labs( title = "Temperature VS Ozone", x="Temperature", y="Ozone")+theme_minimal()
)