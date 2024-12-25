# Load necessary libraries
library(ggplot2)

# Create a dataframe for the extracted data
rounds <- 1:10

# KPI values for Antelope Motors
antelope_roi <- c(10.2, 11.0, 12.0, 12.5, 13.0, 13.5, 14.0, 14.5, 15.0, 15.5)
antelope_revenue_growth <- c(5.5, 6.0, 6.5, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0)
antelope_market_penetration <- c(18.0, 19.5, 21.0, 22.5, 23.5, 24.5, 25.0, 26.5, 27.0, 28.0)

# KPI values for RainbowSix
rainbow_roi <- c(9.0, 10.5, 11.5, 12.0, 13.0, 13.5, 14.0, 15.0, 15.5, 16.0)
rainbow_revenue_growth <- c(6.2, 6.7, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0, 10.5)
rainbow_market_penetration <- c(20.5, 21.5, 22.0, 23.0, 24.0, 25.0, 26.0, 27.0, 28.0, 29.0)

# KPI values for V6 Motors
v6_roi <- c(8.5, 9.0, 10.0, 10.5, 11.0, 11.5, 12.0, 12.5, 13.0, 13.5)
v6_revenue_growth <- c(5.8, 6.2, 6.8, 7.0, 7.5, 8.0, 8.5, 9.0, 9.5, 10.0)
v6_market_penetration <- c(19.0, 20.0, 21.5, 22.0, 23.0, 24.0, 25.0, 26.0, 27.0, 28.0)

# Combine data into a dataframe
data <- data.frame(
  rounds,
  antelope_roi, antelope_revenue_growth, antelope_market_penetration,
  rainbow_roi, rainbow_revenue_growth, rainbow_market_penetration,
  v6_roi, v6_revenue_growth, v6_market_penetration
)

# Plot ROI trends for the three companies
ggplot(data, aes(x = rounds)) +
  geom_line(aes(y = antelope_roi, color = "Antelope Motors ROI")) +
  geom_line(aes(y = rainbow_roi, color = "RainbowSix ROI")) +
  geom_line(aes(y = v6_roi, color = "V6 Motors ROI")) +
  labs(title = "ROI Trends Across 10 Rounds",
       x = "Rounds",
       y = "Return on Investment (%)") +
  theme_minimal()

# Plot Revenue Growth trends for the three companies
ggplot(data, aes(x = rounds)) +
  geom_line(aes(y = antelope_revenue_growth, color = "Antelope Motors Revenue Growth")) +
  geom_line(aes(y = rainbow_revenue_growth, color = "RainbowSix Revenue Growth")) +
  geom_line(aes(y = v6_revenue_growth, color = "V6 Motors Revenue Growth")) +
  labs(title = "Revenue Growth Trends Across 10 Rounds",
       x = "Rounds",
       y = "Revenue Growth (%)") +
  theme_minimal()

# Plot Market Penetration trends for the three companies
ggplot(data, aes(x = rounds)) +
  geom_line(aes(y = antelope_market_penetration, color = "Antelope Motors Market Penetration")) +
  geom_line(aes(y = rainbow_market_penetration, color = "RainbowSix Market Penetration")) +
  geom_line(aes(y = v6_market_penetration, color = "V6 Motors Market Penetration")) +
  labs(title = "Market Penetration Trends Across 10 Rounds",
       x = "Rounds",
       y = "Market Penetration (%)") +
  theme_minimal()
