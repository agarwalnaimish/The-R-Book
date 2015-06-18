# Simple Examples
x <- 1:24
dim(x) <- c(3, 4, 2)
x
dim(x) <- c(4, 2, 3)
x

# Matrices
x <- matrix(data = x, nrow = 3)
x

class(x)
attributes(x)

m <- matrix(data = 1:40, nrow = 10, byrow = TRUE)
m

x <- 1:10
dim(x) <- c(2, 5)
x
is.matrix(x)

# Transpose of Matrix m
t(m)

# Naming the rows and columns of matrices
x <- matrix(data = rpois(n = 100, lambda = 4.5), nrow = 20)
x
rownames(x) <- rownames(x = x, do.NULL = FALSE, prefix = "Row.")
x
colnames(x) <- colnames(x = x, do.NULL = FALSE, prefix = "Col.")
x
dimnames(x) <- list(NULL, paste("drug.", 1:5, sep = ""))
x
dimnames(x)

# Calculations on rows and columns of a matrix
mean(x[, 5])
var(x = x[4, ], na.rm = TRUE)
rowSums(x)
colSums(x)
rowMeans(x)
colMeans(x)
apply(X = x, MARGIN = 2, FUN = mean)

# Grouping
group <- c("A", "B", "B", "A")
rowsum(x = x[1:4, ], group = group, na.rm = TRUE, reorder = TRUE)

apply(X = x, MARGIN = 2, FUN = sample)

# Adding rows and columns to the matrix
x <- rbind(x, apply(X = x, MARGIN = 2, FUN = mean))
x
x <- cbind(x, apply(X = x, MARGIN = 1, FUN = var))
x
colnames(x) 
colnames(x)[6] <- "Variance"
colnames(x)
x

rownames(x) <- rownames(x = x, do.NULL = FALSE, prefix = "Row.")
x
rownames(x)[21] = "Mean"
x

col2 <- x[, 2, drop = FALSE]
col2

# Sweep Function
matdata <- read.table(file = "../The-R-Book/Data/sweepdata.txt", header = TRUE)
head(matdata)
cols <- apply(X = matdata, MARGIN = 2, FUN = mean)
cols
sweep(x = matdata, MARGIN = 2, STATS = cols)

apply(X = matdata, MARGIN = 2, FUN = function(x) {
        1:10
})

t(apply(X = matdata, MARGIN = 2, FUN = function(x) {
        1:10
}))

# Applying apply, lapply, sapply
x <- matrix(data = 1:24, nrow = 4)
x
apply(X = x, MARGIN = 1, FUN = sum)
apply(X = x, MARGIN = 2, FUN = sum)
apply(X = x, MARGIN = 1, FUN = sqrt)
apply(X = x, MARGIN = 2, FUN = sqrt)
apply(X = x, MARGIN = 1, FUN = sample)
apply(X = x, MARGIN = 1, FUN = function(x) {x * x + x})

sapply(X = 1:20, FUN = sqrt)
sapply(X = 1:20, FUN = seq)

sapdecay <- read.table(file = "../The-R-Book/Data/sapdecay.txt", header = TRUE)
names(sapdecay)

sumsq <- function(a, xv = sapdecay$x, yv = sapdecay$y) {
        yf <- exp(-a * xv)
        sum((yf - yv) ^ 2)
}

lm(formula = log(sapdecay$y) ~ sapdecay$x)

a <- seq(0.01, 0.2, 0.005)
a

plot(x = a, y = sapply(a, sumsq), type = "l")

a[min(sapply(a, sumsq)) == sapply(a, sumsq)]

plot(sapdecay$x, sapdecay$y)
xv <- seq(0, 50, 0.1)
lines(xv, exp(-0.055 * xv))

fa <- function(a) {
        sum((sapdecay$y - exp(-a * sapdecay$x)) ^ 2)
}

optimize(f = fa, interval = c(0.01, 0.1))

fb <- function(a) {
        sum(abs(sapdecay$y - exp(-a * sapdecay$x)))
}

optimize(f = fb, interval = c(0.01, 0.1))

# Using the max.col
data <- read.table(file = "../The-R-Book/Data/pgfull.txt", header = TRUE)
head(data)
names(data)

species <- data.frame(data[, 1:54])
species

max.col(m = species)
names(species)[max.col(species)]
table(names(species)[max.col(species)])
length(table(names(species)[max.col(species)]))
length(names(species)) - length(table(names(species)[max.col(species)]))

max.col(-species)

# Restructuring a multidimensional array using 'aperm'
data <- array(data = 1:24, dim = 2:4)
data

dimnames(data)[[1]] <- list("male", "female")
dimnames(data)[[2]] <- list("young", "mid", "old")
dimnames(data)[[3]] <- list("A", "B", "C", "D")
dimnames(data)
data

new.data <- aperm(a = data, perm = c(2, 3, 1))
new.data







