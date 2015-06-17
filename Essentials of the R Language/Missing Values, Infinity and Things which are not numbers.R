# Simple Examples
3/0
-122/0
exp(-Inf)
0/Inf
(0:3) ^ Inf

# NaN
0/0
Inf - Inf
Inf / Inf

# Check Finiteness
is.finite(10)
is.infinite(10)
is.infinite(Inf)

# Missing Values : NA
y <- c(12, NA, 23, 234, 2341, NA)
is.na(y)

y[!is.na(y)]
mean(x = y, na.rm = TRUE)

?which
which(is.na(y))

?ifelse


