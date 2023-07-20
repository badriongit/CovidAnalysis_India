install.packages("sp")
library(sp)

install.packages("raster")
library(raster)

install.packages("rgdal")
library("rgdal")

india_map <- shapefile(file.choose())
plot(india_map)

n <- length(india_map)


state_wise <- read.csv(file.choose())

str(state_wise)
head(state_wise)


head(india_map)
str(india_map)

india_map.data
#str(india_map_frame)

#rownames(state_wise) <- statewise$State
#plot(india_map, col=Statewise$Confirmed)

#?spplot
#spplot(india_map)

#state_wise$Last_Updated_Time <- as.numeric(as.character(state_wise$Last_Updated_Time))

??st_read
SpatialPoints(state_wise)
?SpatialPoints

install.packages("maps")
install.packages("ggmap")
library("maps")
library("ggmap")
world<-map_data("world")
head(world)
india<-map_data("india")
?map_data
#plot(world)

set.seed(123)
w2<-data.frame(world,data=sample(10,length(unique(world$group)),T)[world$group])

ggplot(w2,aes(long,lat,group=group,fill=data))+
  geom_polygon(color="white")+
  scale_fill_gradient(low="lightgreen",high="darkgreen")+
  theme(panel.background = element_rect(fill = "lightsteelblue2"))
