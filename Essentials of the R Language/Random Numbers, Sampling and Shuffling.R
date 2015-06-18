# Simple Examples
set.seed(seed = 375)
runif(n = 3)

# The sample function
y <- c(8,3,5,7,6,6,8,9,2,3,9,4,10,4,11)
sample(x = y, replace = FALSE)
sample(x = y, replace = FALSE, size = 5)
sample(x = y, replace = TRUE, size = 7)

new.vec <- 1:10
prob <- c(1, 2, 3, 3, 3, 3, 2, 1, 5, 1)
sample(x = new.vec, replace = TRUE, prob = prob)



