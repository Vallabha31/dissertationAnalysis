# Install necessary libraries (if not already installed)
# install.packages("ggplot2")

# Load necessary library
library(ggplot2)

# Create a sample data frame for sales volume and market share by model across different rounds
data <- data.frame(
  Round = factor(rep(c("Round 1", "Round 4", "Round 6", "Round 8", "Round 10"), each = 4)),
  Model = rep(c("Bolt", "A7", "Cascade", "Zeus"), times = 5),
  Sales_Volume = c(70000, 45000, 0, 0,        # Round 1 data
                   80000, 50000, 30000, 0,    # Round 4 data
                   90000, 55000, 40000, 30000, # Round 6 data
                   95000, 60000, 50000, 45000, # Round 8 data
                   51000, 58000, 66000, 70000) # Round 10 data
)

# Create a clustered bar chart using ggplot2
ggplot(data, aes(x = Round, y = Sales_Volume, fill = Model)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Product Sales and Market Penetration by Model",
    x = "Round",
    y = "Sales Volume",
    fill = "Car Model"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    plot.title = element_text(hjust = 0.5)
  ) +
  scale_fill_brewer(palette = "Set2") # Optional: Choose a color palette for the bars
