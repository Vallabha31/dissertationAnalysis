# Load necessary library
library(ggplot2)

# Create a sample data frame for Depreciation and Capital Investments over several rounds
data <- data.frame(
  Round = factor(c("Round 1", "Round 2", "Round 3", "Round 4", "Round 5", "Round 6", "Round 7", "Round 8", "Round 9", "Round 10"), 
                 levels = c("Round 1", "Round 2", "Round 3", "Round 4", "Round 5", "Round 6", "Round 7", "Round 8", "Round 9", "Round 10")),
  Depreciation = c(76, 85, 90, 95, 120, 130, 140, 150, 160, 165),   # Depreciation values in million pounds
  Capital_Investment = c(150, 200, 250, 275, 300, 320, 400, 450, 500, 520)  # Capital Investment in million pounds
)

# Create the line chart in ascending order
ggplot(data, aes(x = Round)) +
  geom_line(aes(y = Depreciation, color = "Depreciation"), size = 1) +
  geom_line(aes(y = Capital_Investment, color = "Capital Investment"), size = 1) +
  geom_point(aes(y = Depreciation, color = "Depreciation"), size = 3) +
  geom_point(aes(y = Capital_Investment, color = "Capital Investment"), size = 3) +
  labs(
    title = "Depreciation and Capital Investment Trends Over Time",
    x = "Rounds",
    y = "Amount (in million £)",
    color = "Legend"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    plot.title = element_text(hjust = 0.5)
  ) +
  scale_color_manual(values = c("Depreciation" = "blue", "Capital Investment" = "red")) # Custom colors
