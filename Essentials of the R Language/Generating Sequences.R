# Sequencing
0:10
seq(from = 10, to = 100, by = 2)

vec <- c(55,76,92,103,84,88,121,91,65,77,99)
seq(from = 10, to = 110, length.out = 50)
seq(from = 10, to = 110, along.with = vec)

?sequence
sequence(nvec = c(3, 2))

# Generating repeats
rep(x = 9, times = 10)
rep(x = 1:10, times = 3)
rep(x = 1:20, each = 4)
rep(x = 1:5, times = 5, each = 5)

rep(x = c(11, 22, 33), length.out = 5)
rep(x = c(11, 22, 33), c(4, 1, 3))

# Generating factor levels
gl(n = 10, k = 2)
gl(n = 10, k = 2, length = 40)
gl(n = 5, k = 3, ordered = TRUE, labels = c("A", "B", "C", "D", "E"))
gl(n = 5, k = 3, ordered = TRUE, labels = c("A", "B"))

Temp <- gl(2, 2, 24, labels = c("Low", "High"), ordered = TRUE)
Soft <- gl(3, 8, 24, labels = c("Hard","Medium","Soft"), ordered = TRUE)
M.user <- gl(2, 4, 24, labels = c("N", "Y"), ordered = TRUE)
Brand <- gl(2, 1, 24, labels = c("X", "M"), ordered = TRUE)
data.frame(Temp,Soft,M.user,Brand)


