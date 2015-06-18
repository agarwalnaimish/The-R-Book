# Simple Examples
peas <- c(4, 7, 6, 5, 6, 7)
peas
class(peas)
length(peas)
mean(peas, na.rm = TRUE)
max(peas)
min(peas)
quantile(peas)

# Take user input
peas <- scan()
peas

# Extracting elements of a vector using subscripts
peas[4]
peas[c(2, 3, 6)]
peas[-1]

peas <- 1:6
peas[-1]
peas[-length(peas)]
peas[c(-length(peas), -length(peas) + 1)]

# Trim two largest and two smallest values in x
trim <- function(x) {
        len <- length(x)
        sort(x = x) [-c(1, 2, len - 1, len)]       
}

trim(peas)

# Even numbered values of x
x <- 1:100
x[seq(2, length(x), 2)]

# Naming elements within vector
x <- c(23, 341, 1, 34, 2, 324)
names(x)
names(x) <- 1:length(x)
names(x)
x

# Remove the names from a table of counts
as.vector(table(rpois(n = 20, lambda = 5)))

# Working with logical subscripts
x <- 0:10
sum(x)
sum(x < 5)
sum(x[x < 5])
sum(x * (x < 5))

# Sum up 3 largest values
sum(sort(x, decreasing = TRUE)[1:3])
sum(rev(sort(x))[1:3])

# Working with indices
which.max(x)
which.min(x)
which(x == 4)

