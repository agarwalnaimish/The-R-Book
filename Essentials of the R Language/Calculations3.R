# Simple Calculations
log (42/7.3)
2+3;3*55;5/555

# Complex Numbers
z <- 2.3 + 4.5i
Re(z)
Im(z)
Mod(z)
Arg(z)
Conj(z)
is.complex(z)
as.complex(3.444)

# Rounding
floor(3.4)
ceiling(2.33)

rounded <- function(x) {
        floor (x + 0.5)
}

rounded(3.4)
rounded(3.55)

floor(-3.4)
ceiling(-3.33)

trunc(2.33)
trunc(-3.44)

round(x = 2.33, digits = 1)

signif(323234234234, digits = 2)
signif(-2324234234, digits = 4)

# Arithmetic
123+234-234*234/234123
3^12
log(10)
exp(23)
log10(123)
log(x = 324, base = 23)

# Working with pi
pi
sin(pi/2)
cos(pi/2)

# Common Mathematical Functions
sqrt(234)
factorial(x = 23)
choose(12, 5)
gamma(3)
lgamma(3)
gamma(exp(1))
lgamma(exp(1))
runif(n = 10, min = 10, max = 100)
tan(pi)
tan(pi/2)
acos(0.2324)
acosh(12312)
abs(-2323)

# Modulo and Integer Quotients
123 %/% 2
123 %% 2

# Integers
x <- c(1, 2, 3, 4)
is.integer(x)
is.numeric(x)
x <- as.integer(x)
x
is.integer(x)
as.integer(23.343)
as.integer(-2234.234)
as.integer(23123+234234i)

# Factors
gender <- factor(c("male", "female", "female", "female", "male", "male", "female"))
gender
class(gender)
unclass(gender)
mode(gender)

# Reading data from table
data <- read.table(file = "../The-R-Book/Data/daphnia.txt", header = TRUE)
attach(data)
head(data)

is.factor(Water)
levels(Detergent)
nlevels(Detergent)
length(levels(Detergent))
detach(data)
search()

