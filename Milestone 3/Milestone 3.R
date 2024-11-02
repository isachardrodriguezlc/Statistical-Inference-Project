# Reading the dataset
mlb_data <- read.csv('mlb-odds-2021.csv')

#Plotting the columns for Opening Line
hist(mlb_data$Open, 
     col = "skyblue", 
     main = "Distribution of Opening Line", 
     xlab = "To win the game odds", 
     ylab = "Frequency", 
     breaks = 50)
#About the opening line plot: The histogram for the opening line shows a symmetrical distribution.




#Plotting the columns for Close Line 
hist(mlb_data$Close, 
     col = "skyblue", 
     main = "Distribution of Closing Line", 
     xlab = "To win the game odds", 
     ylab = "Frequency", 
     breaks = 50)
#About the closing line plot: Similar to the opening line, the closing line distribution also looks symmetrical, but there may be a slight shift in the central value compared to the opening line.




#Plotting the columns for Run Line 
hist(mlb_data$RunLine, 
     col = "LightGreen", 
     main = "Distribution of RunLine", 
     xlab = "RunLine", 
     ylab = "Frequency", 
     breaks = 50)
#About the run line plot: The histogram for the run line displays a more concentrated distribution around the value of 1.5

#Plotting the columns for Over/Under Line
hist(mlb_data$OpenOU, 
     col = "Lightgreen", 
     main = "Distribution of Over/Under", 
     xlab = "Over/Under Line", 
     ylab = "Frequency", 
     breaks = 50)
#About the over/under line plot: The over/under tends to focus on a narrow range of possible total scores, which likely reflects typical scoring patterns in the games analyzed.




