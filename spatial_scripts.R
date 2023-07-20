library(sp)
library(raster)
library(rgdal)

map <- shapefile(file.choose())

plot(map)
plot(map, border="blue")
title(main = "India")


data <- read.csv(file.choose())
head(data)

zone <- c("Very High","High","Medium","Low","Very Low")
colors <- c() 

spplot(map, "PrCpInc", main = "India", sub = "Covid 19 Spread across India", 
       col = "transparent")
