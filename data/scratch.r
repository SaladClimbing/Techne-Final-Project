library(readr)
library(dplyr)

shots <- read_csv("~/School/Techne/Project/data/shots_2007-2024.csv")

mean(shots$xCord)

# Calculate the overall proportion of slapshots that were goals
back_stats <- shots %>%
  filter(shotType == "BACK") %>%
  summarise(
    total_backshots = n(),
    total_goals = sum(goal == 1), # or sum(is_goal == TRUE)
    goal_proportion = mean(goal == 1)
  )

defl_stats <- shots %>%
  filter(shotType == "DEFL") %>%
  summarise(
    total_deflshots = n(),
    total_goals = sum(goal == 1), # or sum(is_goal == TRUE)
    goal_proportion = mean(goal == 1)
  )

slap_stats <- shots %>%
  filter(shotType == "SLAP") %>%
  summarise(
    total_slapshots = n(),
    total_goals = sum(goal == 1), # or sum(is_goal == TRUE)
    goal_proportion = mean(goal == 1)
  )

snap_stats <- shots %>%
  filter(shotType == "SNAP") %>%
  summarise(
    total_snapshots = n(),
    total_goals = sum(goal == 1), # or sum(is_goal == TRUE)
    goal_proportion = mean(goal == 1)
  )

tip_stats <- shots %>%
  filter(shotType == "TIP") %>%
  summarise(
    total_tipshots = n(),
    total_goals = sum(goal == 1), # or sum(is_goal == TRUE)
    goal_proportion = mean(goal == 1)
  )

wrap_stats <- shots %>%
  filter(shotType == "WRAP") %>%
  summarise(
    total_wrapshots = n(),
    total_goals = sum(goal == 1), # or sum(is_goal == TRUE)
    goal_proportion = mean(goal == 1)
  )

writst_stats <- shots %>%
  filter(shotType == "WRIST") %>%
  summarise(
    total_wristshots = n(),
    total_goals = sum(goal == 1), # or sum(is_goal == TRUE)
    goal_proportion = mean(goal == 1)
  )

print("Back")
print(paste(round(back_stats$goal_proportion * 100, 2), "%"))
print("Defl")
print(paste(round(defl_stats$goal_proportion * 100, 2), "%"))
print("Slap")
print(paste(round(slap_stats$goal_proportion * 100, 2), "%"))
print("Snap")
print(paste(round(snap_stats$goal_proportion * 100, 2), "%"))
print("Tip")
print(paste(round(tip_stats$goal_proportion * 100, 2), "%"))
print("Wrap")
print(paste(round(wrap_stats$goal_proportion * 100, 2), "%"))
print("Wrist")
print(paste(round(writst_stats$goal_proportion * 100, 2), "%"))
