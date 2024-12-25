# Load required library
library(ggplot2)

# Load the CSV file using the correct file path
file_path <- "C:/Users/pande/Downloads/Simulation/Data on Competition & News Bulletin.csv"
data <- read.csv(file_path, fileEncoding = "UTF-8-BOM", stringsAsFactors = FALSE)

# Convert the Workforce and Productivity Index to numeric if necessary
data$Workforce <- as.numeric(data$Workforce)
data$ProductivityIndex <- as.numeric(data$ProductivityIndex)

# Create a bar chart comparing productivity across different companies and rounds
ggplot(data, aes(x = factor(Company), y = ProductivityIndex, fill = factor(Round))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Employee Productivity Across Companies and Rounds",
       x = "Company",
       y = "Productivity Index",
       fill = "Round") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# If needed, add the effect of automation expenditure and workforce size
ggplot(data, aes(x = factor(Company), y = ProductivityIndex, fill = factor(Round))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Employee Productivity and Automation Expenditure",
       x = "Company",
       y = "Productivity Index",
       fill = "Round") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  facet_wrap(~AutomationExpenditure.M., scales = "free")

