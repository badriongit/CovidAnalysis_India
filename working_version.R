install.packages("sf")
install.packages("ggplot2")
install.packages("tmap")
install.packages("tmaptools")
install.packages("leaflet")
install.packages("dplyr")
install.packages("readr")


library("sf")
library("ggplot2")
library("tmap")
library("tmaptools")
library("leaflet")
library("dplyr")
library("readr")

options(scipen = 999)

mydata <- readr::read_csv("F:\\R\\spatial\\data_category.csv")

mymap <- st_read("F:\\R\\spatial\\India_SHP\\INDIA.shp")

str(mymap)

summary(mymap)
summary(mydata)

joined_stcode <- merge(mymap,mydata$State_code)

str(joined_stcode)
head(joined_stcode)

?inner_join
map_and_data <- inner_join(mymap, mydata,by = c("ST_NAME" = "State"))

ggplot(map_and_data) +
  geom_sf(aes(fill=Confirmed)) +
   scale_fill_gradient(low="#FFCCCB",high = "#FF0000") +
    ggtitle("India : Covid 19 - Confirmed Cases Heat Map")

ggplot(map_and_data) +
  geom_sf(aes(fill=Recovered / Confirmed)) +
  scale_fill_gradient(low="#ADD8e6",high = "#0000FF") +
  ggtitle("India : Covid 19 - Recovered Ratio Cases Heat Map")


ggplot(map_and_data) +
  geom_sf(aes(fill=Active / Confirmed)) +
  scale_fill_gradient(low="#FFCCCB",high = "#FF0000") +
  ggtitle("India : Covid 19 - Active Cases Ratio Heat Map")

           
           
