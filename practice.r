# 統計学入門

# 2.1 平均差・ジニ係数の算出
#mean_diff <- function (X) {
#    d  <- 0
#    md <- 0
#    N  <- length(X)
#    n2 <- N ^ 2
#    for (i in 1:N) {
#        for (j in 1:N) {
#            d  <- abs(X[i] - X[j])
#            md <- md + d
#        }
#    }
#    return (md / n2)
#}
#
#gi <- function (X) {
#    d  <- 0
#    gi <- 0
#    N  <- length(X)
#    n2 <- N ^ 2
#    m  <- mean(X)
#    for (i in 1:N) {
#        for (j in 1:N) {
#            d  <- abs(X[i] - X[j])
#            gi <- gi + d
#        }
#    }
#    return (gi / (2* n2 * m)) 
#}
#
#A <- c(0,3,3,5,5,5,5,7,7,10)
#B <- c(0,1,2,3,5,5,7,8,9,10)
#C <- c(3,4,4,5,5,5,5,6,6, 7)
#
#
#print(paste("md A = ", mean_diff(A))) 
#print(paste("md B = ", mean_diff(B)))
#print(paste("md C = ", mean_diff(C)))
#print(paste("gi A = ", gi(A)))
#print(paste("gi B = ", gi(B)))
#print(paste("gi C = ", gi(C)))

#---------------------------------------------------------------
# エントロピー算出
#entropy <- function (X) {
#    N <- length(X)
#    enp <- 0
#    for (i in 1:N) {
#        enp <- enp + X[i] * log10(X[i])
#    }
#    return (-enp)
#}
#
#this_year <- c(32, 19, 10, 24, 15)
#ago_10y   <- c(28, 13, 18, 29, 12)
#
#H1 <- this_year / sum(this_year) 
#H2 <- ago_10y   / sum(ago_10y)
#
#print(paste("entropy this year    = ", entropy(H1))) 
#print(paste("entropy 10 years ago = ", entropy(H2))) 



#---------------------------------------------------------------
#標準得点・偏差値得点の計算
this_year <- c(32, 19, 10, 24, 15)
ago_10y   <- c(28, 13, 18, 29, 12)

B <- 2
z <- (mean(this_year) - this_year[B]) / var(this_year)
print(paste("z    = ", z)) 
t <- 10 * z + 50
print(paste("t    = ", t)) 

