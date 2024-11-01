#Load the ggplot2 package to create unique and aesthetically pleasing visuals for the graph
library(ggplot2)

mlb_data <- read.csv("mlb-odds-2021.csv")

# Open vs Close Scatterplot
ggplot(mlb_data, aes(x = Open, y = Close, color = RunLine)) +  
  geom_point(size = 6) +                                       
  labs(title = "Scatterplot of Run Line vs Final Score",
       x = "Run Line",
       y = "Final Score") +
  theme_minimal(base_size = 10)  


# Calculating the correlation between Open and Close
correlation <- cor(mlb_data$Open, mlb_data$Close)
print("Correlation between Open and Close:")
correlation
#The scatterplot of opening odds versus closing odds shows a strong positive linear relationship, 
#with a correlation coefficient of 0.889, this high correlation indicates that the opening and closing odds are closely related, 
#suggesting that changes in opening odds strongly predict changes in closing odds.
