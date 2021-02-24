# Understand the R environment

########## How do I work with R ########## 

# R is an interpreted programming language. This means you have to type commands and run these commands - instead of using menus and clicking on options.
# R reads in lines of code and then runs this code to perform the action.
# First you need to tell R what line or chunk of code it needs to run. 
# There a couple of different ways to do this.

# To tell R what code you want to run you can indicate the entire line by having the cursor on the line, or highlight the text. 
# Then press 'Run' button (top right of this panel)
# On a MAC you can use the keyboard shortcut -command+enter

# Alternatively - you can type directly (or copy and paste text) into the console (bottom left panel).

# NB: This character # is used to make comments in the script. Information following the # will not run in R

# Try it out
# Copy and paste the following into the console and press return
2+2
# Now put the cursor on the same line as this equation and press Run (or on MAC command+enter)

########## How does R work ########## 

# R works with objects (tables/data frames, vectors, matrices etc) and functions - scripts that do something. 

# R can create sequences of numbers e.g
1:10
# or you can use the function seq. 
seq(1,10)

# A function is always followed by () and inside the () you need to add arguments. 
# To find out what a function does and what arguments are needed use ?, e.g.
?seq

# Now you try - Create a sequence of numbers from 1 to 30.

# You can make a sequence of numbers an 'object' by giving it a name or in R-speak by assigning it a name, as follows
xx <-  seq(1,10)

# What do you see in the Environment tab in the upper right panel?
# You have created an object. You can see the structure of this object using
str(xx)

# For more see this great introductory tutorial
# https://evolutionarygenetics.github.io/Introduction.html

########## How do I plot in R ########## 

# lets create some normally distributed data
# draw 400 random numbers from a normal distribution with mean of 50 and standard deviation 10.

xn <- rnorm(400, mean=50, sd=10)

# Draw a histogram 
hist(xn)

# WOHOOO your first R plot

# How to save your plot. 

# Interactively - e.g with drop down menus
# From the plot panel choose 'Export' and save the plot in the directory 'plots'

# With commands or in console - save as pdf - first you need to know where you are and where you want to save to. 
# Look at the path information in the Files panel or ask R what the working directory is
getwd()

# When telling R where to save the plot you can specify the whole path or use  the relative path. Here I have used the relative path.

pdf("plots/normalHistogram.pdf")
hist(xn)
dev.off()

########## loading packages ##########

# R has some 16000 packages that contain many functions for all sorts of analyses. These packages are made by many different people (developers).
# R loads some packages automatically, but you also need to load some manually.

# Look at the Packages (bottom, right panel). What packages are already loaded (have a tick next to them)?

# To use a package you need to first install the package and then load the library. 
# You only have to install a package once, but you need to load the library for each R session (everytime you open R).

# To install - choose Install - in the packages menu and choose the package. OR type in the console
install.packages("package_name")
# To load the package type 
library("package_name")

# E.g package ggplot2
install.packages("ggplot2")
library(ggplot2)

########## reproducibility ##########

# When you do an analysis it is good to include documentation of the version of R and all packages that you are using. 
# R will print all this infromation with this simple function 
sessionInfo()
# For each analyis/project I recommend creating a document that provides the session information and to include this in your project directory

########## reading in your data ##########

# Most of the time we want to import our data into R to do the analysis. For beginners this is can be a very difficult process.
# Important things to note. You need to tell R where to find files to read in or where to save files to read out. 
# You need to understand the directory path and where you are. If you not familiar with coding then this can be a big pain and if you have long directory names with spaces and weird characters you will encounter lots of problems.
# Also if you analysis on different computers with different directory structure you will encounter problems.

# When in doubt or if you are lost, use 
getwd()

# to discover where you are and how to specify your path.

# To read in your data you need a file that R can read. 
# You can convert excel spreadsheets to R-readable files: tab-delimited (txt) or comma separated (csv) files 
# From excel you need to use 'save as' and save this file in your data directory. If your excel spreadsheet has multiple worksheets, each needs to be saved separately.
# If this file has columns of numbers and some columns with letters R will automatically read this in as a data frame.

# For R to read the file there are some very important data cleaning steps you need to do first.
# 1. avoid any strange characters in the data, ?()£
# 2. avoid any empty cells within the table  - put 'NA' in all the empty cells. Not necessary if you use .csv
# 3. does the table contain column headers? - there should an equal number of column headers as columns of data. 

# Use one of the following read-in functions, depending on the format of your data. Remove the # in order to make the code line run in R

# dat <- read.csv("data/file.csv")
# dat <- read.table("data/file.txt", header =TRUE)

# Was there an error? Check your data.

# Look at the structure. R will automatically reecognise and store the data as numbers, factors, intergers or characters
str(dat)

# plot your data


