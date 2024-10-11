mlb_data <- read.csv("mlb-odds-2021.csv")

#Statistics for 'Open' column
open_mean <- mean(mlb_data$Open)
open_median <- median(mlb_data$Open)

open_variance <- var(mlb_data$Open)
open_std_dev <- sd(mlb_data$Open)

#Statistics for 'Close' column
close_mean <- mean(mlb_data$Close)
close_median <- median(mlb_data$Close)

close_variance <- var(mlb_data$Close)
close_std_dev <- sd(mlb_data$Close)


#Showing Results
results <- 
  data.frame(
    Statistic = c("Mean", "Median", "Variance", "Standard Deviation"),
    Open = c(open_mean, open_median, open_variance, open_std_dev),
    Close = c(close_mean, close_median, close_variance, close_std_dev)
)

print(results)


#The large difference suggests the presence of outliers, on sports-betting we can deduct that the initial opening line
#it can days before the actual game, however the closing line might indicate a sharper odds to both teams because of the line closest to the game
#it's the most sharp line towards the results, examples of of this difference in the opening and closing line might be: change of roster, weather report, or injuries report.