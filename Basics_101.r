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


#As a data analyst, it is important to have a clear view on the data that you are using. Understanding what each element refers to is therefore essential.
#In the previous exercise, we created a vector with your winnings over the week. Each vector element refers to a day of the week but it is hard to tell which element belongs to which day. It would be nice if you could show that in the vector itself.
#You can give a name to the elements of a vector with the names() function. Have a look at this example:

some_vector <- c("Johnny", "Poker Player")
names(some_vector) <- c("Name", "Profession")

# Create the variable days_vector
days_vector <- c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday')
# Assign the names of the day to the roulette and poker_vectors
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Print the named vectors to the console
poker_vector
roulette_vector

##########################################
#  arithmetic calculations on vectors.

#It is important to know is that if you sum two vectors in R, it takes the element-wise sum. For example, the following three statements are completely equivalent:
> c(1, 2, 3) + c(4, 5, 6)
#[1] 5 7 9
> c(1 + 4, 2 + 5, 3 + 6)
#[1] 5 7 9
> c(5, 7, 9)
#[1] 5 7 9

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <-c(1, 2, 3)+c(4, 5, 6)
# Show me:
total_vector

 # Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)
# Roulette winnings form Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Name poker and roulette
days <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(roulette_vector) <- days
names(poker_vector) <- days

total_poker <- sum(poker_vector)

# Up to you now: assign the correct values to:
total_roulette <- sum(roulette_vector)
total_week <-sum(total_roulette+total_poker)

# Show me:
total_week

# Check if you realized higher total gains in poker then in roulette
answer <- total_poker<total_roulette
# Show me the

# to select specifc number in a vecotr you can use brackets [] i.e. vector[1] will give you the first number in the vector.
# Define a new variable based on a selection
poker_monday <- poker_vector[1]

#o select multiple elements from a vector, you can add square brackets at the end of it. You can indicate between the brackets what elements should be selected. For example: suppose you want to select the first and the fifth day of the week: use the vector c(1,5) between the square brackets. For example, the code below selects the first and fifth element of poker_vector:
# Define a new variable based on a selection
poker_midweek <- poker_vector[c(1,5)]

#Selecting multiple elements of poker_vector with c(2,3,4) is not very convenient. Many statisticians are lazy people by nature, so they created an easier way to do this: c(2,3,4) can be abbreviated to2:4, which generates a vector with all natural numbers from 2 up to 4.
#So, another way to find the mid-week results is poker_vector[2:4]. Notice how the vector 2:4 is placed between the square brackets to select element 2 up to 4.

# this means that :
roulette_selection_vector <- roulette_vector[2:4]
#is the same as :
roulette_selection_vector_1 <- roulette_vector[c(2,3,4)]

#Another way to tackle the previous exercise is by using the names of the vector elements (Monday, Tuesday, …) instead of their numeric positions. For example,
poker_vector["Monday"]
#will select the first element of poker_vector since "Monday" is the name of that first element.
#Just like you did in the previous exercise with numerics, you can also use the element names to select multiple elements, for example:
poker_vector[c("Monday","Tuesday")]

#Calculate your average poker gains during the first three days of the week by selecting these elements with the help of the names. Assign this value to average_midweek_gain. You can use the mean() function to get the average of a vector.
average_midweek_gain <- mean(poker_vector[1:3])

#By making use of comparison operators, we can approach the previous question in a more pro-active way.
#The (logical) comparison operators known to R are:
  #< for less than
  #> for greater than
  #>= for greater than or equal to
  #== for equal to each other
  #!= not equal to each other
#As seen in the previous chapter, stating 6 > 5 returns TRUE. The nice thing about R is that you can use these comparison operators also on vectors. For example, the statement c(4,5,6) > 5 returns: FALSE FALSE TRUE. In other words, you test for every element of the vector if the condition stated by the comparison operator is TRUE or FALSE. Do not take our word for it! Try it in the console ;-).
#Behind the scenes, R recycles the value 5 when you execute c(4,5,6) > 5. R wants to do an element-wise comparison of each element in c(4,5,6) with each corresponding element in 5. However, 5 is not a vector of length three. To solve this, R automatically replicates the value 5 to generate a vector of three elements, c(5, 5, 5) and then carries out the element-wise comparison.

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0

#  Monday   Tuesday Wednesday  Thursday    Friday 
#     TRUE     FALSE      TRUE     FALSE      TRUE


#Working with comparisons will make your data analytical life easier. Instead of selecting a subset of days to investigate yourself (like before), you can simply ask R to return only those days where you realized a positive return for poker.
#In the previous exercises you used selection_vector <- poker_vector > 0 to find the days on which you had a positive poker return. Now, you would like to know not only the days on which you won, but also how much you won on those days.
#You can select the desired elements, by putting selection_vector between the square brackets that follow poker_vector. This works, because R only selects those elements where selection_vector is TRUE by default. For selection_vector this means where poker_vector > 0.

# What days of the week did you make money on poker?
selection_vector <- poker_vector > 0
selection_vector
#   Monday   Tuesday Wednesday  Thursday    Friday 
#     TRUE     FALSE      TRUE     FALSE      TRUE 
# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days
#   Monday Wednesday    Friday 
#      140        20       240 


######################
# What's a matrix?




