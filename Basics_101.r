#we are about to get real basic in here!

# The hashtag is used to add comments

# Show some demo graphs generated with R
demo("graphics")

# An addition
5 + 5

# A substraction
5 - 5

# A multiplication
3 * 5

# A division
(5 + 5)/2

#The ^ operator raises the number to its left to the power of the number to its right: for example 3^2 is 9.
# Exponentiation
2^5

#The modulo returns the remainder of the division of the number to the left by the number on its right, for example 5 modulo 3 or 5 %% 3 is 2.
# Modulo
17%%4


#######################
#VARIABLE ASSIGNMENT

#A basic concept in (statistical) programming is called a variable.
#A variable allows you to store a value (e.g. 4) or an object (e.g. a function description) in R. You can then later use this variable's name to easily access the value or the object that is stored within this variable.
#You can assign a value 4 to a variable my_variable with the command

#Assign the value 42 to x
x <- 42
# Print out the value of the variable x
x

# Assign a value to the variables called my_apples and my_oranges
my_apples <- 5
my_oranges <- 6
# Add these two variables together and print the result
my_apples + my_oranges
# Create the variable my_fruit
my_fruit <- (my_apples + my_oranges)

##########################
# Basic data types in R

#R works with numerous data types. Some of the most basic types to get started are:
#Decimals values like 4.5 are called numerics.
#Natural numbers like 4 are called integers. Integers are also numerics.
#Boolean values (TRUE or FALSE) are called logical (TRUE can be abbreviated to T and FALSE to F).
#Text (or string) values are called characters.

# What's the answer to the universe
my_numeric <- 42

# The quotation marks indicate that the variable is of type character
my_character <- c('forty-two')

my_logical <- FALSE

# Declare variables of different types
my_numeric <- 42
my_character <- "forty-two"
my_logical <- FALSE

#Do you remember that when you added 5 + "six", you got an error due to a mismatch in data types? You can avoid such embarrassing situations by checking the data type of a variable beforehand. You can do this as follows:

# Assign the data type
datatype1 <- class(my_numeric)
datatype2 <- class(my_character)
datatype3 <- class(my_logical)

# Print the types
datatype1
datatype2
datatype3


##################
# Create a vector

#On your way from rags to riches, you will make extensive use of vectors. Vectors are one-dimension arrays that can hold numeric data, character data, or logical data. In other words, a vector is a simple tool to store data. For example, you can store your daily gains and losses in the casinos.
#In R, you create a vector with the combine function c(). You place the vector elements separated by a comma between the brackets. For example:

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE,FALSE,TRUE)
# Print the vectors
numeric_vector
character_vector
boolean_vector

# lets us assigne  some more vectors

# Poker winnings from Monday to Friday
poker_vector <- c(140,-50,20,-120,240)

# Roulette winnings form Monday to Friday
roulette_vector <- c(-24,-50,100,-350,10)
