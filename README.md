# R-scripts
Theory

#To output text in R, use single or double quotes:
Example
"Hello World!"

#To output numbers, just type the number (without quotes):
Example
5
10
25

#To do simple calculations, add numbers together:
Example
5 + 5

#WE output code in R without using a print function:
Example
"Hello World!"
However, R does have a print() function available if you want to use it. This might be useful if you are familiar with other programming languages, such as Python, which often uses the print() function to output code.
Example
print("Hello World!")

#And there are times you must use the print() function to output code, for example when working with for loops (which you will learn more about in a later chapter):
Example
for (x in 1:10) {
  print(x)
}

#When executing code, R will ignore anything that starts with #.

#R does not have a command for declaring a variable. A variable is created the moment you first assign a value to it. To assign a value to a variable, use the <- sign. To output (or print) the variable value, just type the variable name:
Example
name <- "John"
age <- 40
name   # output "John"
age    # output 40

#You can also concatenate, or join, two or more elements, by using the paste() function.
To combine both text and a variable, R uses comma (,):
Example
text <- "awesome"
paste("R is", text)

You can also use , to add a variable to another variable:
Example
text1 <- "R is"
text2 <- "awesome"
paste(text1, text2)

For numbers, the + character works as a mathematical operator:
Example
num1 <- 5
num2 <- 10
num1 + num2

If you try to combine a string (text) and a number, R will give you an error:
Example
num <- 5
text <- "Some text"
num + text
Result:
Error in num + text : non-numeric argument to binary operator

-R allows you to assign the same value to multiple variables in one line:
Example
# Assign the same value to multiple variables in one line
var1 <- var2 <- var3 <- "Orange"
# Print variable values
var1
var2
var3

#Basic data types in R can be divided into the following types:
numeric - (10.5, 55, 787)
integer - (1L, 55L, 100L, where the letter "L" declares this as an integer)
complex - (9 + 3i, where "i" is the imaginary part)
character (a.k.a. string) - ("k", "R is exciting", "FALSE", "11.5")
logical (a.k.a. boolean) - (TRUE or FALSE)

We can use the class() function to check the data type of a variable:

Example
-numeric
x <- 10.5
class(x)

-integer
x <- 1000L
class(x)

-complex
x <- 9i + 3
class(x)

-character/string
x <- "R is exciting"
class(x)

-logical/boolean
x <- TRUE
class(x)

#Multiline Strings
You can assign a multiline string to a variable like this:
Example
str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."
str # print the value of str

However, note that R will add a "\n" at the end of each line break. This is called an escape character, and the n character indicates a new line.
If you want the line breaks to be inserted at the same position as in the code, use the cat() function:
Example
str <- "Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."
cat(str)

#String Length
There are many usesful string functions in R.
For example, to find the number of characters in a string, use the nchar() function:
Example
str <- "Hello World!"
nchar(str)

#Check a String
Use the grepl() function to check if a character or a sequence of characters are present in a string:
Example
str <- "Hello World!"
grepl("H", str)
grepl("Hello", str)
grepl("X", str)
