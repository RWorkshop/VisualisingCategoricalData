# JWiley/JWileymisc Miscellaneous Utilities and Functions
# Version 0.3.0

# A collection of miscellaneous tools and functions, such as tools to 
# generate descriptive statistics tables, format output, visualize relations among variables or check distributions.

##########################################################

# Install the latest version of this package by entering the following in R:
install.packages("devtools")
library(devtools)
install_github("JWiley/JWileymisc")

##########################################################

testdat <- data.frame(
  Var = 1:4,
  Mean = c(1.5, 3, 2.2, 4.6),
  Low = c("Happy", "Peaceful", "Excited", "Content"),
  High = c("Sad", "Angry", "Hopeless", "Anxious"),
  stringsAsFactors = FALSE)

##########################################################

gglikert("Mean", "Var", "Low", "High", data = testdat, xlim = c(1, 5),
  title = "Example Plot of Average Affect Ratings")


##########################################################
testdat <- rbind(
  cbind(testdat, Group = "Young"),
  cbind(testdat, Group = "Old"))
testdat$Mean[5:8] <- c(1.7, 2.6, 2.0, 4.4)

##########################################################
gglikert("Mean", "Var", "Low", "High", colour = "Group",
  data = testdat, xlim = c(1, 5),
  title = "Example Plot of Average Affect Ratings")

##########################################################
gglikert("Mean", "Var", "Low", "High", colour = "Group",
  data = testdat, xlim = c(1, 5),
  title = "Example Plot of Average Affect Ratings") +
scale_colour_manual(values = c("Young" = "grey50", "Old" = "black"))

## clean up
rm(testdat)
