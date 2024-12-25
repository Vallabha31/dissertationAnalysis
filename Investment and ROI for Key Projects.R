# Load necessary library
library(ggplot2)

# Create a sample data frame for Investment and ROI
data <- data.frame(
  Project = factor(c("Zero Emission Engine", "Smart Driving Controls", "Bi-Directional Charging", "Biometric Vehicle Access", "Long-Range Electric Car")),
  Investment = c(100, 80, 90, 70, 120),    # Investment in million pounds
  ROI = c(200, 170, 230, 150, 330)         # ROI calculated as (Revenue - Investment)
)

# Melt data into long format for stacking
library(reshape2)
data_melted <- melt(data, id.vars = "Project", variable.name = "Category", value.name = "Amount")

# Create a stacked bar chart
ggplot(data_melted, aes(x = Project, y = Amount, fill = Category)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Investment and ROI for Key Projects",
    x = "R&D Projects",
    y = "Amount (in million £)",
    fill = "Category"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1),
    plot.title = element_text(hjust = 0.5)
  ) +
  scale_fill_brewer(palette = "Set2")
