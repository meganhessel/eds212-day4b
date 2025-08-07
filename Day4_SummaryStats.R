#load libraries 
library(GGally)
library(skimr)
library(palmerpenguins)
library(tidyverse)

view(penguins)
name(penguins)
dim(penguins)
summary(penguins)

#get summary using skimr
skimr::skim(penguins)

head(penguins)
tail(penguins)

GGally::ggpairs(penguins)
GGally::ggpairs(penguins, 
               columns =3:6, 
               ggplot2::aes(color = species))

#make a histogram of penguin flipperlength
ggplot(data = penguins, aes(x = flipper_len, fill = species)) +
  geom_histogram()
