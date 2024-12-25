# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load the data
file_path <- "C:/Users/pande/Downloads/Simulation/Data on Competition & News Bulletin.csv"
data <- read.csv(file_path, stringsAsFactors = FALSE)

# Filter the data to include only Antelope Motors
antelope_data <- data %>% filter(Company == "Antelope Motors")

# Convert ROSF to numeric after removing the percentage sign
antelope_data$ROSF <- as.numeric(gsub("%", "", antelope_data$ROSF))

# Create a trend line plot for ROSF across rounds
ggplot(antelope_data, aes(x = Round, y = ROSF)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "blue", size = 2) +
  labs(title = "Profitability Trend (ROSF) for Antelope Motors", 
       x = "Round", 
       y = "ROSF (%)") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
