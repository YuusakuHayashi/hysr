height  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\test\\height.csv", sep=""))

# ����
#M <- dim(height)[1]
M <- height[,"id"]

# ������Υ�����(ñ�㲽�ΰ١�����Ʊ�쥵����)
T.size <- 5000
Na <- rep(T.size, length=length(M))
# ������˥��������ѹ�����ʤ顢�����˵��Ҥ��Ƥ��� ---

#-----------------------------------------------------


# ��¬��(�콸��)�κ���
N <- matrix(0, nrow=length(M), ncol=T.size)
for (a in 1:length(M)) {
   N[a,] <- rnorm(Na[a], height[a,"ave"], height[a,"sd"])
}


# �������(20��������)
m <- sample(M, 20, replace=F)


# ����Ȥ���Х�����
S.size <- 100
na <- rep(S.size, length=length(m))
# ������˥��������ѹ�����ʤ顢�����˵��Ҥ��Ƥ��� ---

#-----------------------------------------------------


estimate <- function () {
    # ɸ���ͤκ���
    X <- matrix(0, nrow=length(m), ncol=S.size)
    for (i in 1:length(m)) {
        X[i, ] <- sample(N[m[i], ], na[i], replace=F)
    }
    
    
    # ��н���Ȥ�ʿ��
    mui <- rep(0, length=length(m))
    for (i in 1:dim(X)[1]) {
        for (j in 1:dim(X)[2]) {
            mui[i] <- mui[i] + X[i, j]
        }
        mui[i] <- mui[i] / na[i]
    }
    
    
    # ʿ���Ϳ���
    mu <- 0
    for (i in 1:length(m)) {
        mu <- mu + (mui[i] * Na[i] / length(N))
    }
    mu <- mu * (length(M) / length(m))
    return (mu)
}

mu <- 0
mu <- estimate()


# ������
t <- X

# ����Ȥ������ͷ�
ta <- rep(0, length=length(m))
for (a in 1:dim(t)[1]) {
    for (b in 1:na[a]) {
        ta[a] <- ta[a] + t[a, b]
    }
}

# ����Ȥ�ʬ��
sa2 <- rep(0, length=length(m)) 
for (a in 1:dim(t)[1]) {
    for (b in 1:na[a]) {
        sa2[a] <- sa2[a] + (t[a, b] - (ta[a] / na[a]))^2
    }
    sa2[a] <- sa2[a] / na[a]
}


# ��
te2 <- 0
for (a in 1:length(m)) {
    te2 <- te2 + (ta[a] - (length(t) * mu) / length(m))^2
}
te2 <- te2 / length(m)


# ʬ��
s2 <- 0
r2 <- 0
for (a in 1:length(m)) {
    r2 <- r2 + ((Na[a]^2 * sa2[a]) / na[a]) 
}
s2 <- (length(M) / (length(m) * length(N)^2)) * r2 + (length(M)^2 / (length(m) * length(N)^2)) * te2


# �ƥ���
mu2 <- rep(0, length=100)
for (i in 1:length(mu2)) {
    mu2[i] <- estimate()
}

print(s2)
print(var(mu2))
