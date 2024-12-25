# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load the data
file_path <- "C:/Users/pande/Downloads/Simulation/Data on Competition & News Bulletin.csv"
data <- read.csv(file_path, stringsAsFactors = FALSE)

# Filter the data to include only Antelope Motors
antelope_data <- data %>% filter(Company == "Antelope Motors")

# Convert price columns to numeric after removing £ symbol and commas
antelope_data$SmallPrice <- as.numeric(gsub("[£,]", "", antelope_data$SmallPrice))
antelope_data$MediumPrice <- as.numeric(gsub("[£,]", "", antelope_data$MediumPrice))
antelope_data$LargePrice <- as.numeric(gsub("[£,]", "", antelope_data$LargePrice))
antelope_data$LuxuryPrice <- as.numeric(gsub("[£,]", "", antelope_data$LuxuryPrice))

# Create a trend line plot for prices across rounds
ggplot(antelope_data, aes(x = Round)) +
  geom_line(aes(y = SmallPrice, color = "Small Car Price"), size = 1) +
  geom_line(aes(y = MediumPrice, color = "Medium Car Price"), size = 1) +
  geom_line(aes(y = LargePrice, color = "Large Car Price"), size = 1) +
  geom_line(aes(y = LuxuryPrice, color = "Luxury Car Price"), size = 1) +
  labs(title = "Price Strategy Trend for Antelope Motors", 
       x = "Round", 
       y = "Price (£)", 
       color = "Car Model") +
  scale_color_manual(values = c("Small Car Price" = "blue", 
                                "Medium Car Price" = "green", 
                                "Large Car Price" = "orange", 
                                "Luxury Car Price" = "red")) +
  theme_minimal()
