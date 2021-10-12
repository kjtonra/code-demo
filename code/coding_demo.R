# Analytical workflows: coding demo
# More useful information or notes to self! 
# This is the place for anything to know for next time

# This time we're doing a linear regression and making a figure. 

# Note: Set working directory by USING TAB SELECT MENUS AFTER TYPING swd("~
#   setwd("~/Users/kaitlyntonra/git/code-demo")

# Clear a workspace and close all graphics devices ------------------------
# Add section header with command + shift + r

# Clear environment!
rm(list = ls())

# Get rid of any past versions of figures
graphics.off

# Generate some data ------------------------------------------------------

n <- 30
m <- 2.2
b <- 1.1

# Independent variable
x <- rnorm(n = n, mean = 0, sd = 1) 

noise <- rnorm(n = n, mean = 0, sd = 1)

y <- m * x + b + noise

plot(x, y)


# Do linear regression ----------------------------------------------------

fit <- glm(y ~ x)

# Plot the results --------------------------------------------------------

plot(x, y)
abline(fit)

# Save data ---------------------------------------------------------------

# This saves the data that we generated above so that we don't need to run the whole thing again. 
# Good if we have calculations or models that would take forever to complete. 
save.image("./data/my_expensive_calculations.Rdata")

# This brings that data back into the environment without having to re-run the script
load(file = "./data/my_expensive_calculations.Rdata")

# We would want to use this type of thing if for example we used n = 30000000 above. We'd run it, save the data, then use 
# load(file = ...) to bring the data back later for making figures or whatever. 

