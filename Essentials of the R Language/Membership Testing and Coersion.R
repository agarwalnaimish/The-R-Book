# Simple Examples
lv <- c(TRUE, FALSE, FALSE, TRUE)
class(lv)
is.logical(lv)
levels(lv) 

fv <- as.factor(lv)
fv
is.factor(fv)

nv <- as.numeric(lv)
is.numeric(nv)
nv

attributes(nv)

as.numeric(as.factor(c("a", "b", "c")))
as.numeric(c("a", 4, "b"))

# Calculating Geometric Mean
geometric <- function(x) {
        if(!is.numeric(x)) {
                stop ("Input must be numeric")
        }
        exp(mean(log(x)))
}         

geometric(c(2, 3, 10, 4))

# Vector Recycling
a <- 1:10
b <- 1:5
a + b



