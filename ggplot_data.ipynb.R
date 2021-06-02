install.packages("ggplot2", dependencies = TRUE)
library(ggplot2)
library(tidyverse)

#create three vectors, bind via column, print and graph
num1 <- c(1,4,6,7,4)
num2 <- c(7,8,4,1,6)
num3 <- c(9,1,9,5,3)

mat_num <- cbind(num1,num2,num3)
print(mat_num)

#Graph 
matplot( mat_num, type = "o", pch = 15, col = 1:3)

#create a dataframe
name_1 <- c("Ruth", "Sarah", "Paul", "James", "David")
age_1 <- c(27, 28, 38, 29, 40)
gender_1 <-c("F", "F", "M", "M","M")
Role_1 <- c("Data Scientist", "Accountant", "Finance Manager", "Maths Teacher","Painter")
Length_serv <-c(1, 5, 7, 3, 2 )

employee <- data.frame(name_1,age_1,gender_1,Role_1,Length_serv)
print(employee)

#Plot a bar graph of 5 subjects 

ggplot(employee, aes(x=name_1, y=Length_serv)) + 
  geom_bar(stat = "identity")


# plot a simple gplot 
x <- seq(1:10)
y <- x^2  

qplot(x, y) 


#Write a R program to get the first 10 Fibonacci numbers
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

#program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, and "Buzz" for multiples of 5

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}




