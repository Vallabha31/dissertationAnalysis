# Load necessary libraries
library(ggplot2)

# Load the CSV file into a variable, adjust the file path accordingly
file_path <- "C:/Users/pande/Downloads/Simulation/Data on Competition & News Bulletin.csv"
data <- read.csv(file_path, stringsAsFactors = FALSE)

# Clean and convert relevant columns by removing special characters and converting to numeric
# Columns with "(M)" represent values in millions of pounds (£)
data$AutomationExpenditure <- as.numeric(gsub("[£,]", "", data$AutomationExpenditure.M.))
data$PromotionBudget <- as.numeric(gsub("[£,]", "", data$PromotionBudget.M.))
data$Profit <- as.numeric(gsub("[£,]", "", data$Profit.M.))
data$ROSF <- as.numeric(gsub("[%,]", "", data$ROSF))  # Assuming ROSF is Revenue Growth

# Scatter plot for Revenue Growth (ROSF) vs Automation Expenditure
ggplot(data, aes(x = AutomationExpenditure, y = ROSF, color = Company)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE, col = "red") +
  labs(title = "Revenue Growth vs Automation Expenditure",
       x = "Automation Expenditure (£ Millions)",
       y = "Revenue Growth (%)") +
  theme_minimal()

# Scatter plot for Revenue Growth (ROSF) vs Promotion Budget
ggplot(data, aes(x = PromotionBudget, y = ROSF, color = Company)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE, col = "blue") +
  labs(title = "Revenue Growth vs Promotion Budget",
       x = "Promotion Budget (£ Millions)",
       y = "Revenue Growth (%)") +
  theme_minimal()

# Line plot for the same analysis
# Revenue Growth (ROSF) vs Automation Expenditure (Line Plot)
ggplot(data, aes(x = AutomationExpenditure, y = ROSF, group = Company, color = Company)) +
  geom_line(size = 1) +
  geom_point(size = 3) +
  labs(title = "Revenue Growth vs Automation Expenditure (Line Plot)",
       x = "Automation Expenditure (£ Millions)",
       y = "Revenue Growth (%)") +
  theme_minimal()

# Revenue Growth (ROSF) vs Promotion Budget (Line Plot)
ggplot(data, aes(x = PromotionBudget, y = ROSF, group = Company, color = Company)) +
  geom_line(size = 1) +
  geom_point(size = 3) +
  labs(title = "Revenue Growth vs Promotion Budget (Line Plot)",
       x = "Promotion Budget (£ Millions)",
       y = "Revenue Growth (%)") +
  theme_minimal()

