#New York Air Quality Measurements

install.packages("ggplot2")
library(ggplot2)
library(tidyverse)

data(package = .packages(all.available= TRUE))
data()

#turning data into dataframe 
air_qu <- data_frame(airquality)

#data exploration 
head(air_qu)
tail(air_qu)
row.names(air_qu)
colnames(air_qu)         
        
#visualization (line graph of Ozone v Temp)
ggplot(data = air_qu , aes( x = Ozone, y = Wind )) +
  geom_line() + 
  labs(
    title = "Ozone when its windy ", 
    y=  "Wind" ) + 
  theme(
    panel.background = element_rect(fill = "white")
  )

#visualization (line graph of Temp v Wind)  that shows low temprature is linked to stronger wind
ggplot(data = air_qu , aes( x = Temp, y = Wind)) +
  geom_line() + 
  labs(
    title = "Wind vs Temparature", 
    y=  "Wind" ) + 
  theme(
    panel.background = element_rect(fill = "grey")
  )


#Relationship between Wind and Temp plotted in different months 
air_qu %>%
  ggplot(aes(x =Wind , y = Temp, color = Month )) +
  geom_point()


# Newyork's hottest month 
air_qu %>%
ggplot(aes(x = Month, y = Temp)) +
  geom_smooth() + 
  labs(title = "The hottest month ") +
  theme(panel.background = element_rect(fill = "white"))


#NewYork's temperature count
air_qu %>%
  ggplot(aes(x = Temp)) +
  geom_bar(stat="count") + 
  labs(title = "NewYork's temperature count ") +
  theme(panel.background = element_rect(fill = "white"))


# NewYork's temperature density from Spring to Fall
air_qu %>%
  ggplot(aes(x = Month, y = Temp)) +
  geom_density_2d_filled() 

# NewYork's temperature density and its relation to the Ozone 
air_qu %>%
  ggplot(aes(x = Temp, y = Ozone)) +
  geom_density_2d_filled() +
  labs(
    title = "Temp vs Ozone", 
    y=  "Ozone" ) + 
  theme(
    panel.background = element_rect(fill = "blue")
  )

# NewYork's temperature density and its relation to the Ozone - GeomPolygon
air_qu %>%
  ggplot(aes(x = Temp, y = Ozone)) +
  geom_polygon()

# NewYork's temperature density and its relation to the Ozone - GeomSmooth
air_qu %>%
  ggplot(aes(x = Temp, y = Ozone)) +
  geom_smooth()





