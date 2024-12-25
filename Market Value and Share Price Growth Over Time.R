# Load necessary library
library(ggplot2)

# Create a sample data frame for Market Value and Share Price over several rounds
data <- data.frame(
  Round = factor(c("Round 1", "Round 2", "Round 3", "Round 4", "Round 5", "Round 6", "Round 7", "Round 8", "Round 9", "Round 10"),
                 levels = c("Round 1", "Round 2", "Round 3", "Round 4", "Round 5", "Round 6", "Round 7", "Round 8", "Round 9", "Round 10")),
  Market_Value = c(4.69, 5.10, 6.50, 7.20, 8.50, 9.31, 10.50, 11.06, 11.55, 11.42),   # Market value in millions
  Share_Price = c(1.00, 1.10, 1.25, 1.30, 1.35, 1.43, 1.50, 1.43, 1.43, 1.43)          # Share price in pounds
)

# Create the line chart for Market Value and Share Price
ggplot(data, aes(x = Round)) +
  geom_line(aes(y = Market_Value, color = "Market Value"), size = 1) +
  geom_line(aes(y = Share_Price * 10, color = "Share Price"), size = 1) +  # Multiply Share Price by 10 for scaling
  geom_point(aes(y = Market_Value, color = "Market Value"), size = 3) +
  geom_point(aes(y = Share_Price * 10, color = "Share Price"), size = 3) +  # Same scaling for points
  scale_y_continuous(
    name = "Market Value (in millions £)",
    sec.axis = sec_axis(~./10, name = "Share Price (in £)")  # Secondary axis for Share Price
  ) +
  labs(
    title = "Market Value and Share Price Growth Over Time",
    x = "Rounds",
    color = "Legend"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    plot.title = element_text(hjust = 0.5)
  ) +
  scale_color_manual(values = c("Market Value" = "blue", "Share Price" = "green"))  # Custom colors
