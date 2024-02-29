data <- read.csv("https://people.sc.fsu.edu/~jburkardt/data/csv/biostats.csv")
head(data)
colnames(data) <- c("Name", "Sex", "Age", "Height", "Weigth")
plot(data$Height, data$Weigth, col = "blue", lwd = 3, 
     xlab = "height", ylab = "weigth",
     main = "relationship between height andd weigth")
#save as pdf

dev.print(pdf, "plot2.pdf")

#last weeks question

library(babynames)
#since the data is too large we take a sample
baby_10 <- babynames[sample(nrow(babynames), size = 10, replace = F), ]
barplot(baby_10$n, names.arg = baby_10$name, 
        col = ifelse(baby_10$sex == "F", "pink", "lightblue"),
        main = "number of names by gender",
        cex.names = 0.8, beside = T)

dev.print(pdf, "part3.csv")

#Q2

var1 <- seq(10, 60, 6)
var2 <- list(1:20, letters[1:20])
var3 <- matrix(rnorm(24), nrow = 12)
var4 <- matrix(rep(c(4, 6, 4), 3), nrow = 3, byrow = T)

#save four different variables
save(var1, var2, var3, var4, file = "myvar2902.RData")


rm(list = ls()) #cleans the environment

#to load back...
load("myvar2902.RData")
ls()









