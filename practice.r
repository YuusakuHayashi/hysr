# ���׳�����

# 2.1 ʿ�Ѻ������˷����λ���
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
# ����ȥ�ԡ�����
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
# ɸ���������к��������η׻�
#this_year <- c(32, 19, 10, 24, 15)
#ago_10y   <- c(28, 13, 18, 29, 12)
#
#B <- 2
#z <- (mean(this_year) - this_year[B]) / var(this_year)
#print(paste("z    = ", z)) 
#t <- 10 * z + 50
#print(paste("t    = ", t)) 

#---------------------------------------------------------------
# ���ۿޡ���ط���
#election   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\practice\\election.csv", sep=""))
##print(summary(election[2]))
##print(summary(election[3]))
##plot(election[2:3], xlim=c(0,100), ylim=c(0,100), 
##     xlab="voting rate", ylab="home ownership rate")
#
#print(paste("cor (func)    = ", cor(election[2], election[3])))
#
## ��ʬ�� sumproduct of diviation
## x, y��ɸ�ܿ���Ʊ��ɬ�פ���
#cov <- function (X, Y) {
#    N    <- length(X)
#    xm   <- mean(X)
#    ym   <- mean(Y)  
#    ans  <- 0
#    for (i in 1:length(X)) {
#        xdiv <- X[i] - xm
#        ydiv <- Y[i] - ym
#        ans  <- ans + xdiv * ydiv
#    }
#    return (ans / N)
#}
#
#s1  = sqrt(var(election[,2]))
#s2  = sqrt(var(election[,3]))
#cov = cov(election[,2], election[,3])
#cor2 = cov / (s1 * s2)
#print(paste("cor (calc)    = ", cor2))

#---------------------------------------------------------------

# ���ԥ��ޥ�ν����ط���
rs <- function (X, Y) {
    N    <- length(X)
    ans  <- 0
    for (i in 1:length(X)) {
        ans  <- ans + (X[i] - Y[i])^2 
    }
    ans <- 1 - (6 / (N^3 - N) * ans)
    return (ans)
}
#risk   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\practice\\risk.csv", sep=""))
#attach(risk)
#rs1    <- rs(risk[, 2], risk[, 3])
#print(paste("spearman risk (calc)    = ", rs1))
#print(paste("spearman risk (func)    = ", cor(risk[,2], risk[,3], method="spearman")))
##print(paste("cor      risk (func)    = ", cor(risk[,2], risk[,3])))

# ���ԥ��ޥ�ν����ط����ϡ��ԥ��������ط�����
# ɸ���оݤ�����̥ǡ����ˤʤä�����
# �ҤǤ⡢Ʊ�����Ȼפ���
# (cor() ����ưŪ�˽�̥ǡ����Ȥ��ƽ������Ƥʤ����)
# method="spearman"����ꤹ��ɬ���������뤫������


# ����ɡ���ν����ط���
#rk <- function (X, Y) {
#    N    <- length(X)
#    G    <- 0
#    H    <- 0
#    ans  <- 0
#    c    <- combn(1:30, m=2)
#    for (i in 1:dim(c)[2]) {
#        j <- c[1,i]
#        k <- c[2,i]
#        if ((X[j] > X[k]) & (Y[j] > Y[k])) {
#            G <- G + 1 
#            next
#        }
#        if ((X[j] < X[k]) & (Y[j] < Y[k])) {
#            G <- G + 1 
#            next
#        }
#        if ((X[j] > X[k]) & (Y[j] < Y[k])) {
#            H <- H + 1 
#            next
#        }
#        if ((X[j] < X[k]) & (Y[j] > Y[k])) {
#            H <- H + 1 
#            next
#        }
#    }
#    ans <- (G - H) / ((N * (N-1)) / 2)
#    return (ans)
#}
#
#risk   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\practice\\risk.csv", sep=""))
#attach(risk)
#rk1    <- rk(risk[, 2], risk[, 3])
#print(paste("kendall  cor  (calc)    = ", rk1))
#print(paste("kendall  cor  (func)    = ", cor(risk[,2], risk[,3], method="kendall")))
#
# ����ɡ���ν����ط����ϴ�¬�оݤ���(j, k)��ͤ������Τ褦�˥�����Ȥ���
# ���������� Xj > Xk, �ޤ��� Yj > Yk �λ� G++
# ���������� Xj < Xk, �ޤ��� Yj < Yk �λ� G++
# ���������� Xj > Xk, �ޤ��� Yj < Yk �λ� H++ 
# ���������� Xj < Xk, �ޤ��� Yj > Yk �λ� H++ 
# H �ȣǤκ��ˤĤ��ơ��Ф�����n(n-1)/2�ǳ��


#---------------------------------------------------------------

## �ɡ���������
## ��������򣴲��ꤲ���Ȥ��������ʤ��Ȥ���Ф������Ҥ��뤫���Фʤ������Ҥ��뤫
## �����ꤲ���Ȥ�������
#O <- 6 ^ 4
## ��������Фʤ�����
#B <- 5 ^ 4
## �������ϽФ�Ȥ�������
## ����ϡ������Фʤ������佸��Ǥ����ä�
#A <- O - B
## A �������鷺����¿��
#
## ���ĤΥ��������Ʊ�����ꤲ�뤳�Ȥ򣲣����Ԥ�������
## {6, 6}���ܤ����ʤ��Ȥ���Ф�Τ��Ҥ��뤫���Фʤ������Ҥ��뤫
## ������
## {6, 6}���ܤ������Фʤ�����
#PB <- (35/36)^24
## {6, 6}���ܤ�����ϽФ�����
## ����ϡ������Фʤ������佸��Ǥ����ä�
#PA <- 1 - PB


## �ۥ��إ󥹤Σ�������Σ���
## �ܤ��¤������ˤʤ��Ȥ߹�碌 {6, 6} �Τ�
#i <- 0
#repeat {
#    i <- i + 1
#    p <- 1 - (35 / 36) ^ i
#    if (p > 0.9) { break }
#}

## 30�ͤδǸ��ؤ򣱣��ͤ��ĤΣ��Ȥθ����̳��ʬ����ʬ����
#x <- 1
#y <- 1
#for (i in 16:30) { x <- x * i }
#for (i in 01:15) { y <- y * i }
#c  <- x / y
#c2 <- choose(n=30, k=15)

# r�ͤ������������Ʊ���ͤ����ʤ��Ȥ⣲�ͤ����Ψ
#same_birth <- function (R) {
#    p <- 1
#    for (i in 2:R) {
#        p <- p * (1 - ((i - 1) / 365))
#    }
#    return (1 - p)
#}
#print("R = 5")
#print(paste("same birth day = ", same_birth(5)))
#print("R = 10")
#print(paste("same birth day = ", same_birth(10)))



# ����ο���
p.AdepC   <- 0.950
p.C       <- 0.005
p._Adep_C <- 0.950
#p.CdepA  <- ?

#p.AandC + p._AandC + p

# ����դ���Ψ���(�٥���������)
# p.CdepA = p.AandC / p.A
# p.AdepC = p.AandC / p.C , p.AdepC * p.C = p.AandC ���
# p.CdepA = p.AdepC * p.C / p.A
# ��ä�p.A �������ɤ�

# ����դ��β�ˡ�����ˤ��
# p.A = p.AandC + p.Aand_C 
#     = p.AandC + (1 - p._Aand_C)
# p.C = p.AandC + p._AandC ������
p.AandC  <- p.AdepC * p.C
p.CdepA  <- p.AdepC * p.C / p.A
















