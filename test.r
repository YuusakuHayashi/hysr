height  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\test\\height.csv", sep=""))

# 集落
#M <- dim(height)[1]
M <- height[,1]

# 集落毎のサイズ(単純化の為、全て同一サイズ)
T.size <- 5000
Na <- rep(T.size, length=length(M))
# 集落毎にサイズを変更するなら、ここに記述していく ---

#-----------------------------------------------------


# 観測値(母集団)の作成
N <- matrix(0, nrow=length(M), ncol=T.size)
for (a in 1:length(M)) {
   N[a,] <- rnorm(Na[a], height[a,2], height[a,3])
}


# 集落抽出(20集落を抽出)
m <- sample(M, 20, replace=F)


# 集落ごとの抽出サイズ
S.size <- 100
na <- rep(S.size, length=length(m))
# 集落毎にサイズを変更するなら、ここに記述していく ---

#-----------------------------------------------------


# 標本値の作成
X <- matrix(0, nrow=length(m), ncol=S.size)
for (i in 1:length(m)) {
    X[i, ] <- sample(N[(ma[i]), ], na[i], replace=F)
}

# 抽出集落ごとの平均
mui <- rep(0, length=length(m))
for (i in 1:dim(X)[1]) {
    for (j in 1:dim(X)[2]) {
        mui[i] <- mui[i] + X[i, j]
    }
    mui[i] <- mui[i] / na[i]
}


# 平均値推定
mu <- 0
for (i in 1:length(m)) {
    mu <- mu + (mui[i] * Na[i] / length(N))
}
mu <- mu * (length(M) / length(m))


# 特性値
t <- N

# 集落ごとの特性値計
ta <- rep(0, length=length(M))
for (a in 1:dim(t)[1]) {
    for (b in 1:Na[a]) {
        ta[a] <- ta[a] + t[a, b]
    }
}

# 集落ごとの分散
sa2 <- rep(0, length=length(M)) 
for (a in 1:dim(t)[1]) {
    for (b in 1:Na[a]) {
        sa2[a] <- sa2[a] + (t[a, b] - (ta[a] / Na[a]))^2
    }
    sa2[a] <- sa2[a] / Na[a]
}


# 誤差
te2 <- 0
for (a in 1:length(M)) {
    te2 <- te2 + (ta[a] - length(N) * mu / length(M))^2
}
te2 <- te2 / length(M)



# 分散
s2 <- 0
for (a in 1:length(M)) {
    s2 <- s2 + (Na[a]^2 * sa2[a])
}
