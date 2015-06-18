# Simple Examples
x <- c(8,3,5,7,6,6,8,9,2,3,9,4,10,4,11,-100)
y <- c(8,3,5,7,6,6,8,9,2,3,9,4,10,4,11,100)
mean(x)
median(x)
min(x)
max(x)
range(x)
var(x)
cor(x, y)
sort(x)
rank(x)
x
order(x, decreasing = TRUE)
quantile(x)
cumsum(x)
cumprod(x)
cummax(x)
cummin(x)
a <- 1:10
b <- 11:20
c <- 21:30
pmax(a, b, c)
pmin(a, b, c)

df <- data.frame(a, b, c)
df
colMeans(df)
colSums(df)
rowMeans(df)
rowSums(df)

fivenum(x)

counts <- rnbinom(n = 10000, size = 1.1, mu = 0.92)
counts[1:30]
table(counts)

# Using tapply
data <- read.table(file = "../The-R-Book/Data/temperatures.txt", header = TRUE)
attach(data)
head(data)
tapply(X = temperature, INDEX = month, FUN = mean)
tapply(X = temperature, INDEX = month, FUN = var)
tapply(X = temperature, INDEX = month, FUN = min)

tapply(X = temperature, INDEX = month, FUN = function(x) {
        sqrt(var(x) / length(x))
})

tapply(X = temperature, INDEX = list(yr, month), FUN = mean, na.rm = TRUE)[, 1:4]

tapply(X = temperature, INDEX = list(yr, month), FUN = mean, na.rm = TRUE, trim = 0.2)[, 1:4]

tapply(X = rain, INDEX = list(yr, month), FUN = mean)[, 1:6]

detach(data)

# Aggregate function for grouped summary statistics
data <- read.table(file = "../The-R-Book/Data/phDaphnia.txt", header = TRUE)
attach(data)
head(data)
names(data)

# One to One Aggregate
aggregate(formula = Growth.rate ~ Water, FUN = mean, data = data)

# One to Many Aggregate
aggregate(formula = Growth.rate ~ Water + Detergent, FUN = mean, data = data)

# Many to Many Aggregate
aggregate(formula = cbind(pH, Growth.rate) ~ Water + Detergent, FUN = mean, data = data)

detach(data)

# Parallel minima and maxima
x <- rnorm(n = 10, mean = 5, sd = 3)
x
y <- rnorm(n = 10, mean = 5.5, sd = 3.2)
y
z <- rnorm(n = 10, mean = 4.8, sd = 4)
z
pmax(x, y, z)
pmin(x, y, z)

# Summary information from vectors by groups
data <- read.table("../The-R-Book/Data/daphnia.txt", header = TRUE)
attach(data)
head(data)
names(data)
tapply(X = Growth.rate, INDEX = Detergent, FUN = mean)
tapply(X = Growth.rate, INDEX = list(Water, Daphnia), FUN = mean)

detach(data)

# Addresses within vectors
y <- c(8,3,5,7,6,6,8,9,2,3,9,4,10,4,11)
which(y > 5)
y[y > 5]
length(y)
length(y[y > 5])

# Finding closest values
x <- rnorm(n = 100, mean = 10, sd = 2)
x

# Index of value in x closest to 7
i <- which(abs(x - 7) == min(abs(x - 7)))
x[i]

closest <- function(x, value) {
        x[abs(x - value) == min(abs(x - value))]
}

closest(x, 13)

# Sorting, Ranking and Ordering
houses <- read.table(file = "../The-R-Book/Data/houses.txt", header = TRUE)
attach(houses)
head(houses)

ranks <- rank(Price)
ranks
sorted <- sort(Price)
sorted
ordered <- order(Price)
ordered

view <- data.frame(Price, ranks, sorted, ordered)
view

Location[order(Price)]
Location[rev(order(Price))]

detach(houses)

# Understanding the difference between 'unique' and 'duplicated'
nvec <- c("Williams","Jones","Smith","Williams","Jones","Williams")
table(nvec)
unique(nvec)
duplicated(nvec)
nvec[!duplicated(nvec)]

salary <- c(100, 102, 98, 98, 100, 102, 103, 97, 96)
mean(salary)
mean(unique(salary))

# Looking for runs of numbers within vectors
poisson <- rpois(n = 150, lambda = 0.7)
poisson
r <- rle(poisson)
class(r)
length(r)
mr <- max(r[[1]])
which(r[[1]] == mr)
r[[2]][5]

# Sets Union, Intersection and Difference
setA <- c("a", "b", "c", "d", "e")
setB <- c("d", "e", "f", "g")

union(setA, setB)
intersect(setA, setB)
setdiff(setA, setB)
setdiff(setB, setA)
setequal(setA, setB)
setA %in% setB







