mlb_data <- read.csv("mlb-odds-2021.csv")

# Function to calculate the 95% confidence interval fro the columns
calculate_confidence_interval <- function(data_column) {
  
  #Calculating the mean_value
  mean_value <- mean(data_column)
  
  #The SEM Function calculates the margin of error for the confidence interval.
  #The formula is Confidence Interval = Mean + - Margin Error 
  sem <- sd(data_column) / sqrt(length(data_column))
  error_margin <- qt(0.975, df = length(na.omit(data_column)) - 1) * sem
  
  #The Lower Bound in the confidence interval is the smallest on range.
  #Meaning the true population mean could fall with a certain level on confidence in this case 95%
  #The formula is Confidence Interval = Mean - Margin Error 
  lower_bound <- mean_value - error_margin
  
  #The Upper Bound in the confidence interval is the largest on range.
  #Meaning the true population mean could fall with a certain level on confidence in this case 95%
  #The formula is Confidence Interval = Mean +  Margin Error 
  upper_bound <- mean_value + error_margin
  c(lower_bound, upper_bound)
}

# Calculating the confidence intervals for Open and Close 
open_ci <- calculate_confidence_interval(mlb_data$Open)
close_ci <- calculate_confidence_interval(mlb_data$Close)

cat("95% Confidence Interval for Open:", open_ci, "\n")
cat("95% Confidence Interval for Close:", close_ci, "\n")


