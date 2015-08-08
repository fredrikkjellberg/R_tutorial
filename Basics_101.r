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
# matrix

#In R, a matrix is a collection of elements of the same data type (numeric, character, or logical) arranged into a fixed number of rows and columns. Since you are only working with rows and columns, a matrix is called two-dimensional.
#You can construct a matrix in R with the matrix() function. Consider the following example:
matrix(1:9, byrow = TRUE, nrow = 3)

with the matrix function. The data elements must be of the same basic type.

> A = matrix( 
+   c(2, 4, 3, 1, 5, 7), # the data elements 
+   nrow=2,              # number of rows 
+   ncol=3,              # number of columns 
+   byrow = TRUE)        # fill matrix by rows 
 
A                      # print the matrix 
#     [,1] [,2] [,3] 
#[1,]    2    4    3 
#[2,]    1    5    7
#An element at the mth row, nth column of A can be accessed by the expression A[m, n].

A[2, 3]      # element at 2nd row, 3rd column 
#[1] 7
#The entire mth row A can be extracted as A[m, ].

A[2, ]       # the 2nd row 
#[1] 1 5 7
#Similarly, the entire nth column A can be extracted as A[ ,n].

A[ ,3]       # the 3rd column 
#[1] 3 7
#We can also extract more than one rows or columns at a time.

A[ ,c(1,3)]  # the 1st and 3rd columns 
#[,1] [,2] 
#[1,]    2    3 
#[2,]    1    7
#If we assign names to the rows and columns of the matrix, than we can access the elements by names.

dimnames(A) = list( 
+   c("row1", "row2"),         # row names 
+   c("col1", "col2", "col3")) # column names 
 
A                 # print A 
#     col1 col2 col3 
#row1    2    4    3 
#row2    1    5    7 
 
A["row2", "col3"] # element at 2nd row, 3rd column 
#[1] 7

#In the matrix() function:
#  The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use 1:9 which constructs the vector c(1, 2, 3, 4, 5, 6, 7, 8, 9).
#  The argument byrow indicates that the matrix is filled by the rows. If we want the vector to be filled by the columns, we just place byrow = FALSE.
#  The third argument nrow indicates that the matrix should have three rows.

# mutiple vecotors into one matrix
V1 <- rnorm(20)
V2 <- rnorm(20)
V3 <- rnorm(20)
mat <- matrix(c(V1,V2),ncol=length(V1))

#lets try this with our movie vectors

# Box office Star Wars: In Millions!
# The first element: US, the second element: Non-US 
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Add your code below to Construct matrix
star_wars_matrix <- matrix(
+c( new_hope, #addign first row
+   empire_strikes, #adding second row
+   return_jedi #adding to third row
+ ), 
+byrow = TRUE,  #adding by row
+ncol = 3) # number of rows

star_wars_matrix <- matrix(data=c(new_hope,empire_strikes,return_jedi), byrow = TRUE, nrow = 3)

#Similar to vectors, you can add names for the rows and the columns of a matrix
rownames(my_matrix) <- row_# Add your code here such that rows and columns of star_wars_matrix have a name!

# lets do this with our test data
row_names_vector <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_names_vector <- c("US","non-US")

rownames(star_wars_matrix ) <- row_names_vector
colnames(star_wars_matrix ) <- col_names_vector

#In R, the function rowSums() conveniently calculates the totals for each row of a matrix. This function creates a new vector:

# Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow=3, byrow = TRUE, dimnames = list(movie_names, col_titles))

# Your code here
worldwide_vector <- rowSums(star_wars_matrix) 

#You can add a column or multiple columns to a matrix with the cbind() function, which merges matrices and/or vectors together by column. For example:

big_matrix <- cbind(matrix1, matrix2, vector1 ...)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix,worldwide_vector)


#row conbind

#Assign to all_wars_matrix a new matrix with star_wars_matrix in the first three rows and star_wars_matrix2 in the next three rows.
# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix,star_wars_matrix2)

#                           US non-US
# A New Hope              461.0  314.4
# The Empire Strikes Back 290.5  247.9
# Return of the Jedi      309.3  165.8
# > star_wars_matrix2
#                       US non-US
# The Phantom Menace   474.5  552.5
# Attack of the Clones 310.7  338.7
# Revenge of the Sith  380.3  468.5
# > all_wars_matrix
#                           US non-US
# A New Hope              461.0  314.4
# The Empire Strikes Back 290.5  247.9
# Return of the Jedi      309.3  165.8
# The Phantom Menace      474.5  552.5
# Attack of the Clones    310.7  338.7
# Revenge of the Sith     380.3  468.5

#Just like every cbind() has a rbind(), every colSums() has a rowSums(). 

#Calculate the total revenue for the US and the non-US region and assign total_revenue_vector. You can use the colSums() function.
# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)


#Similar to vectors, you can use the square brackets [ ] to select one or multiple elements from a matrix. Whereas vectors have one dimension, matrices have two dimensions. You should therefore use a comma to separate that what to select from the rows from that what you want to select from the columns. For example:
my_matrix[1,2] #selects from the first row the second element.
my_matrix[1:3,2:4] #selects rows 1,2,3 and columns 2,3,4.

#If you want to select all elements of a row or a column, no number is needed before or after the comma, respectively:
my_matrix[,1] #selects all elements of the first column.
my_matrix[1,] #selects all elements of the first row.

# Average non-US revenue per movie
non_us_all  <-  mean(star_wars_matrix[,2]) #2nd column all rows which is non-us revenue for all movies
non_us_all 
non_us_all_1  <-  mean(star_wars_matrix[,"non-US"]) #non-us revenue for all movies
non_us_all_1 
# Average non-US revenue of first two movies
non_us_some <- mean(star_wars_matrix[1:2,2])  #2nd column all rows (non-US) and first tow movies (rows)


#Similar to what you have learned with vectors, the standard operators like +, -, /, *, etc. work in an element-wise way on matrices in R.
#For example: 2 * my_matrix multiplies each element of my_matrix by two. Again, R recycles the value 2 behind the scenes, building a matrix containing only 2s with the same dimensions as my_matrix. Then, R carries out the element-wise operation.
#xAs a newly-hired data analyst for Lucasfilm, it is your job is to find out how many visitors went to each movie for each geographical area. You already have the total revenue figures in star_wars_matrix. Assume that the price of a ticket was 5 dollars. Note that box office numbers divided by the ticket price gives you the number of visitors.



price <- 5 # price is 5$
# Estimation of visitors
visitors <- star_wars_matrix/5 # number of visitors based on a ticket price of 5$
 
star_wars_matrix 
# Print the estimate to the console
visitors

# > star_wars_matrix
# US non-US
# A New Hope              461.0  314.4
# The Empire Strikes Back 290.5  247.9
# Return of the Jedi      309.3  165.8
# > # Print the estimate to the console
#   > visitors
# US non-US
# A New Hope              92.20  62.88
# The Empire Strikes Back 58.10  49.58
# Return of the Jedi      61.86  33.16

#Just like 2*my_matrix multiplied every element of my_matrix by two, my_matrix1 * my_matrix2 creates a matrix where each element is the product of the corresponding elements in my_matrix1 and my_matrix2.
#After looking at the result of the previous exercise, big boss Lucas points out that the ticket prices went up over time with one dollar per movie. He asks to redo the analysis based on the prices you can find in ticket_prices_matrix (source: imagination).
#Those who are familiar with matrices should note that this is not the standard matrix multiplication for which you should use %*% in R.

ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles)) 
ticket_prices_matrix

# Estimated number of visitors
visitors <- star_wars_matrix/ticket_prices_matrix

# Average number of US visitors
average_us_visitors <- mean(visitors[,"US"])

# Average number of non-US visitors
average_non_us_visitors <- mean(visitors[,"non-US"])

###########################
#  FACTORS

#In this chapter you dive into the wonderful world of factors.
#The term factor refers to a statistical data type used to store categorical variables. The difference between a categorical variable and a continuous variable is that a categorical variable can belong to a limited number of categories. A continuous variable, on the other hand, can correspond to an infinite number of values.
#It is important that R knows whether it is dealing with a continuous or a categorical variable, as the statistical models you will develop in the future treat both types differently. (You will see later why this is the case.)
#A good example of a categorical variable is the variable 'Gender'. A human individual can either be "Male" or "Female", making abstraction of intersexes. So here "Male" and "Female" are, in a simplified sense, the two values of the categorical variable "Gender", and every observation can be assigned to either the value "Male" of "Female".
