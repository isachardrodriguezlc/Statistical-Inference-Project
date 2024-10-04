
mlb_data <- read.csv("mlb-odds-2021.csv")

#Open -> check
boxplot(mlb_data$Open, main = "Boxplot for Open Line ")

#Close -> check
boxplot(mlb_data$Close, main = "Boxplot for Close Line ")

#OpenOU -> check
boxplot(mlb_data$OpenOU, main = "Boxplot for OpenOU Line ")

#RunLine -> check
boxplot(mlb_data$RunLine, main = "Boxplot for RunLine Line ")
