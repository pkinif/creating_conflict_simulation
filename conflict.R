# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load the mtcars dataset
data("mtcars")

# Data manipulation: Add a factor column for cylinders
mtcars <- mtcars %>%
  mutate(cyl_factor = factor(cyl, levels = c(4, 6, 8), labels = c("4 Cyl", "6 Cyl", "8 Cyl")))

# Summarize the dataset
summary_table <- mtcars %>%
  group_by(cyl_factor) %>%
  summarise(avg_mpg = mean(mpg, na.rm = TRUE), avg_hp = mean(hp, na.rm = TRUE))

print(summary_table)