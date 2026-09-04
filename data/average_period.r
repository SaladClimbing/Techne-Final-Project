library(readr)

data <- read_csv("~/School/Techne/Project/data/shots_2007-2024.csv")

mean(data$period)
mean((data$time) / 60) # 30.58752 minutes
# Interestingly the average shot is almost excatly the middle of the game

mean(data$xCordAdjusted)
