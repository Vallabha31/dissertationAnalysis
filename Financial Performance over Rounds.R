install.packages("ggplot2")
# Load ggplot2 for visualization
library(ggplot2)

# Creating the data frame with Profit and Loss data
profit_loss_data <- data.frame(
  Round = 1:10,
  Sales_Revenue = c(3667.50, 5731.00, 5565.99, 8132.89, 8998.79, 11986.00, 15006.60, 18714.62, 21339.75, 18123.26),
  Gross_Profit = c(1346.55, 2244.10, 1957.94, 2925.70, 3791.61, 4500.57, 6494.26, 12223.92, 6407.27, 8236.67),
  Operating_Profit = c(589.86, 989.76, 574.24, 972.65, 1591.02, 1478.82, 3487.86, 7283.92, 774.34, 3398.73),
  Net_Profit = c(513.86, 876.12, 469.94, 837.65, 1456.02, 1241.32, 3236.86, 6991.84, 438.28, 3096.71)
)

# Viewing the data
print(profit_loss_data)
# Plotting Sales Revenue, Gross Profit, Operating Profit, and Net Profit
ggplot(profit_loss_data, aes(x = Round)) +
  geom_line(aes(y = Sales_Revenue, color = "Sales Revenue"), size = 1) +
  geom_line(aes(y = Gross_Profit, color = "Gross Profit"), size = 1) +
  geom_line(aes(y = Operating_Profit, color = "Operating Profit"), size = 1) +
  geom_line(aes(y = Net_Profit, color = "Net Profit"), size = 1) +
  labs(title = "Financial Performance Over Rounds", 
       x = "Rounds (Years)", 
       y = "Amount (£)", 
       color = "Metrics") +
  theme_minimal() +
  theme(legend.position = "bottom")

