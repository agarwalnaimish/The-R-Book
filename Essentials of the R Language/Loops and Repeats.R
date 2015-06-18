# Simple Examples

for (i in 1:5) {
        print(i ^ 2)
}

fact <- function(x) {
        if (x == 0) {
                return(1)
        }
        
        i <- 1
        for (j in 1:x) {
                i <- i * j
        }
        i
}

fact(0)
fact(5)
fact(23)

sapply(1:10, fact)

cumprod(x = 1:10)

binary <- function(x) {
        vec = vector(mode = "numeric", length = 0)
        while (x > 0) {
                rem = x %% 2
                x = x %/% 2
                
                vec = c(vec, rem) # not an efficient method
        }
        
        return(rev(vec))
}

binary(3)

sapply(1:200, binary)

fibonacci <- function(x) {
        a = 0
        b = 1
        fibo = vector(mode = "numeric", length = 0)
        
        while (a + b <= x) {
                c = a + b
                fibo = c(fibo, c) # not an efficient method
                a = b
                b = c
        }
        
        return(fibo)
}

fibonacci(8)

unique(sapply(1:100, fibonacci))

# Loop avoidance
y <- -10:10
y
y[y < 0] <- 100
y

# Using ifelse
y <- -10:10
y
z <- ifelse(test = y < 0, yes = "yes", no = "no")
z

# slowness of loops
system.time(x <- runif(1000000))

# Using proc.time()
tim = proc.time()
for (i in 1:1000000) {
        
}
proc.time() - tim

# do not grow vectors by repeated concatenation, 
# it is the most inefficient approach

# loops for producing time-series

next.year <- function(nt, lambda) {
        lambda * nt * (1 - nt)
}

next.year(nt = 0.6, lambda = 3.7)
next.year(nt = 0.888, lambda = 3.7)

N <- numeric(length = 20)
N
N[1] = 0.6

for (i in 2:20) {
        N[i] = next.year(nt = N[i - 1], lambda = 3.7)
}
N

plot(N, type = "l")
















