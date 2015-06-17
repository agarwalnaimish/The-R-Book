# TRUE and FALSE
TRUE == FALSE
T == F

# Testing for equality with real numbers
x <- sqrt(2)
x * x == 2

x <- 0.3 - 0.2
y <- 0.1
x == y
identical(x = x, y = y)
all.equal(target = x, current = y)

if (isTRUE(all.equal(x, y))) {
        print ("Hey! They are equal")
}

# Summarizing differences between objects using all.equal
a <- c("Hello", "Hey", "Hola")
b <- factor(c("male", "female"))
all.equal(a, b)

class(b)
mode(b)
attributes(b)

# Evaluation of combinations of TRUE and FALSE
x <- c(NA, TRUE, FALSE)
names(x) <- as.character(x)
names(x)
?outer
outer(X = x, Y = x, FUN = "&")
outer(X = x, Y = x, FUN = "|")

# Logical arithmetic
x <- 0:6
x < 4
all(... = x > 0)
any(... = x < 0)
sum(... = x < 4)
(x < 4) * runif(n = 7, min = 10, max = 30)

# Reducing the number of factors
treatment <- letters[1:5]
treatment
t2 <- factor(1 + (treatment == 'b') + 2 * (treatment == 'c') + 2 * (treatment == 'e'))
t2




