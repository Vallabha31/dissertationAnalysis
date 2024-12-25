# Load necessary libraries
library(ggplot2)

# Load the CSV file using the correct file path
file_path <- "C:/Users/pande/Downloads/Simulation/Data on Competition & News Bulletin.csv"
data <- read.csv(file_path, stringsAsFactors = FALSE)

# Cleaning the data to remove non-numeric characters from SmallPrice and MarketShareSmall
data$SmallPrice <- as.numeric(gsub("[£,]", "", data$SmallPrice))   # Remove currency symbols and commas
data$MarketShareSmall <- as.numeric(gsub("[%]", "", data$MarketShareSmall))  # Remove percentage signs

# Check the structure again to ensure proper formatting
str(data)

# Perform the Linear Regression Model for Small Car Sales vs Market Share and Small Price
sales_model <- lm(SmallCarSold ~ MarketShareSmall + SmallPrice, data = data)

# Summary of the regression model to interpret the results
summary(sales_model)

# Plot regression results for Market Share and Small Car Sales
ggplot(data, aes(x = MarketShareSmall, y = SmallCarSold)) +
  geom_point() +
  geom_smooth(method = "lm", col = "blue") +
  labs(title = "Small Car Sales vs Market Share", x = "Market Share (%)", y = "Small Car Sales")

# Plot regression results for Small Price and Small Car Sales
ggplot(data, aes(x = SmallPrice, y = SmallCarSold)) +
  geom_point() +
  geom_smooth(method = "lm", col = "red") +
  labs(title = "Small Car Sales vs Small Price", x = "Small Price (£)", y = "Small Car Sales")

