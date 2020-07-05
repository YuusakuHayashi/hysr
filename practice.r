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
# 標準得点・偏差値得点の計算
#this_year <- c(32, 19, 10, 24, 15)
#ago_10y   <- c(28, 13, 18, 29, 12)
#
#B <- 2
#z <- (mean(this_year) - this_year[B]) / var(this_year)
#print(paste("z    = ", z)) 
#t <- 10 * z + 50
#print(paste("t    = ", t)) 

#---------------------------------------------------------------
# 散布図・相関係数
#election   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\practice\\election.csv", sep=""))
##print(summary(election[2]))
##print(summary(election[3]))
##plot(election[2:3], xlim=c(0,100), ylim=c(0,100), 
##     xlab="voting rate", ylab="home ownership rate")
#
#print(paste("cor (func)    = ", cor(election[2], election[3])))
#
## 共分散 sumproduct of diviation
## x, yの標本数が同じ必要あり
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

# スピアマンの順位相関係数
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

# スピアマンの順位相関係数は、ピアソンの相関係数の
# 標本対象が、順位データになっただけ
# Ｒでも、同じだと思われる
# (cor() が自動的に順位データとして処理してなければ)
# method="spearman"を指定する必要性があるかは不明


# ケンドールの順位相関係数
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
# ケンドールの順位相関係数は観測対象の対(j, k)を考え、次のようにカウントする
# ケース１． Xj > Xk, または Yj > Yk の時 G++
# ケース２． Xj < Xk, または Yj < Yk の時 G++
# ケース３． Xj > Xk, または Yj < Yk の時 H++ 
# ケース４． Xj < Xk, または Yj > Yk の時 H++ 
# H とＧの差について、対の全数n(n-1)/2で割る


#---------------------------------------------------------------

## ド・メレの問題
## さいころを４回投げたとき、６少なくとも一回出る方に賭けるか、出ない方に賭けるか
## ４回投げたときの内訳
#O <- 6 ^ 4
## ６が一回も出ない内訳
#B <- 5 ^ 4
## ６が一回は出るときの内訳
## これは、１回も出ない場合の補集合であるよって
#A <- O - B
## A の方がわずかに多い
#
## ２個のサイコロを同時に投げることを２４回試行した時、
## {6, 6}の目が少なくとも一回出るのに賭けるか、出ない方に賭けるか
## 全事象
## {6, 6}の目が１回も出ない内訳
#PB <- (35/36)^24
## {6, 6}の目が１回は出る内訳
## これは、１回も出ない場合の補集合であるよって
#PA <- 1 - PB


## ホイヘンスの１４問題の１１
## 目の和が１２になる組み合わせ {6, 6} のみ
#i <- 0
#repeat {
#    i <- i + 1
#    p <- 1 - (35 / 36) ^ i
#    if (p > 0.9) { break }
#}

## 30人の看護婦を１５人ずつの２組の交代勤務に分ける分け方
#x <- 1
#y <- 1
#for (i in 16:30) { x <- x * i }
#for (i in 01:15) { y <- y * i }
#c  <- x / y
#c2 <- choose(n=30, k=15)

# r人の中に誕生日が同じ人が少なくとも２人いる確率
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



# ガンの診断
p.AdepC   <- 0.950
p.C       <- 0.005
p._Adep_C <- 0.950
#p.CdepA  <- ?

#p.AandC + p._AandC + p

# 条件付き確率より(ベイズの定理)
# p.CdepA = p.AandC / p.A
# p.AdepC = p.AandC / p.C , p.AdepC * p.C = p.AandC より
# p.CdepA = p.AdepC * p.C / p.A
# よってp.A を求めれば良い

# 条件付きの加法定理により
# p.A = p.AandC + p.Aand_C 
#     = p.AandC + (1 - p._Aand_C)
# p.C = p.AandC + p._AandC だから
p.AandC  <- p.AdepC * p.C
p.CdepA  <- p.AdepC * p.C / p.A
















