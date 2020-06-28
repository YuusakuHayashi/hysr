


# Section-2 Dataframe
#worms   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\02_dataframe\\worms.csv", sep=""))
#das     <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\02_dataframe\\das.csv", sep=""))
#yields  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\02_dataframe\\fertyield.csv", sep=""))
#scatter <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\02_dataframe\\scatter.csv", sep=""))
#weather <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\02_dataframe\\weather.data.csv", sep=""))
#coplot  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\02_dataframe\\coplot.csv", sep=""))
#np      <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\02_dataframe\\np.csv", sep=""))
#attach(np)
#barplot(tapply(yield, list(nitrogen, phosphorus), mean), ylim=c(0,3.5), beside=TRUE, xlab="phosphorus")
#legend(locator(1), legend=c("no", "yes"), title="nitrogen", fill=c("black", "lightgrey"))
## barplot() �ǡ�������դ����褹��
## nitrogen, phosphorus ��yes, no �ˤ�äƱ�������yield �ˤĤ��ơ�
## nitrogen=yes, phosphorus=yes �ξ�����ߺ��Ѥ�ѻ����뤿��ˡ�
## tapply() ��nitrogen, phosphorus ���Ȥ߹�碌���ʿ�Ѥ�׻�����
## phosphorus �ˤĤ������褹�롣
## ���λ���phosphorus=no, yes �Τ��줾��ˡ�nitrogen=yes, no ��
## 2�͡���4�ͤ�������դ����Ϥ���� 

#yvals   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\03_center\\yvalues.csv", sep=""))
#attach(yvals)
#
#mean(y)
#
#median(y)
# median(Y) �� Y�������Ĥξ�硢�������2�ǡ������ͤ�ʿ�Ѥ�Ȥ�

#insects <- 100000^0.2
# ^ ... �٤���黻��
# (ʬ���Ǥ٤���򤹤�ȡ��߾躬n��X����ޤ�)

#insects <- c(1, 10, 1000, 10, 1)
#ex      <- exp(mean(log(insects)))
# log(VEC) �ǳ����Ǥ��Ф��������п���Ȥ�
# ���μ����п���ʿ�Ѥǻؿ��ؿ���׻�����ȡ�

#upper <- rep(c(100, 200), 10)
#plot(upper, type="l", ylim=c(0,250), ylab="y", col="blue")
#lower <- rep(c(10, 20), 10)
#lines(lower, col="blue")
## lines() �Ǵ��˺��������ץ�åȤ�����Ǥ���

# Section-3 Center Value
#upper <- rep(c(100, 200), 10)
#plot(log(upper), type="l", ylim=c(0,10), ylab="y", col="blue")
#lower <- rep(c(10, 20), 10)
#lines(log(lower), col="blue")
# ��ưΨ�򸫤����Ȥ���
# �������(upper, lower)�ϼºݤˤ�Ʊ����ưΨ����Ĥ����ץ�åȤ���ȡ�
# upper ��������礭�����ᡢlower����礭����ư�򤷤Ƥ���褦��
# �����䤹������򤷤ʤ��褦���п����äƳ�ǧ����


# Section-4 Diviation
#y <- c(13, 7, 5, 12, 9, 15, 6, 11, 9, 7, 12)
#plot(y, ylim=c(0, 20), pch=16, col="blue")
# range(y)
# range(VEC) �ϥ٥��ȥ�κ����͡��Ǿ��ͤΣ��Ĥ�ɽ������
#lines(c(4.5, 5.5), c(15, 15), lty=2, col="red")
#lines(c(3.5, 4.5), c(5, 5), lty=2, col="red")
#lines(c(4.5, 4.5), c(5, 15), col="red")
# lty �����Υ��������������Ƥ��롢lty=2 ������

#y <- c(13, 7, 5, 12, 9, 15, 6, 11, 9, 7, 12)
#plot(y, ylim=c(0, 20), pch=16, col="blue")
#abline(h=mean(y))
# abline()�ǥ���դ˼����������
# h=Y ��X���˿�ʿ����������Ƥ���
#for(i in 1:length(y)) { lines(c(i, i), c(mean(y), y[i]), col="red") }

#y <- c(13, 7, 5, 12, 9, 15, 6, 11, 9, 7, 12)
#print(sum((y - mean(y))^2))
## ʿ����
#print(var(y))
## ʬ��
#garden  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\04_variance\\gardens.csv", sep=""))
#attach(garden)
#if (var(gardenB) > var(gardenC) ) {
#    gdn_f <- var(gardenB) / var(gardenC)
#    gdn_n <- gardenB
#    gdn_d <- gardenC
#} else {
#    gdn_f <- var(gardenC) / var(gardenB)
#    gdn_n <- gardenC
#    gdn_d <- gardenB
#}
#gdn_nfd <- length(gdn_n) - 1
#gdn_dfd <- length(gdn_d) - 1
#gdn_pf  <- pf(gdn_f, gdn_nfd, gdn_dfd)
#bothp   <- 2*(1 - gdn_pf)
## pf(F, NUMERATOR, DEMOMINATOR) ... fʬ�ۤ�����ʬ�۴ؿ�
##    F ... F��
##    NUMERATOR   ... ʬ�Ҥ�ʬ���μ�ͳ��
##    DEMOMINATOR ... ʬ���ʬ���μ�ͳ��
## pf() �Ǥ���F1�Ͱʲ���ȯ�������Ψ��������Τǡ�
## 1 - pf() ��F1�Ͱʾ����ȯ����Ψ����ޤ�
## ��������ʬ����ͭ�դ��㤤���(F2�ʲ�)��ξ¦�γ�Ψ��
## 2 * (1 - pf()) �Ȥʤ�
## +-----+----------+----------+-----
## 0     F2         M          F1

#garden  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\04_variance\\gardens.csv", sep=""))
#attach(garden)
#print(var.test(gardenB, gardenC))
## var.test(S1, S2) ... F�����Ԥ�
##     S1 ... ɸ��1
##     S2 ... ɸ��2
## ���Ϸ�̤�
## F�ͤ�S1��S2��ʬ����
## num df�ͤϡ�ʬ�Ҥ�ʬ���μ�ͳ��(numerator degree of free)
## denom df�ͤϡ�ʬ�Ҥ�ʬ���μ�ͳ��(denominator degree of free)
## p-value�ͤϡ�2�Ĥ���ʬ�����������Ȳ��ꤷ�����ˡ�
## ����ʬ���椬ȯ�������Ψ
## alternative hypothesis ����Ω����ǡ�ʬ�����������ʤ��Ȥ��Ƥ���
## 95 percent confidence interval ��95%���Ǥ��ꡢ
## sample estimates�ǥ���ץ�Ȥ��Ƥ�F�ͤ�׻����Ƥ���

#plot(c(0,32), c(0,15), type="n", xlab="Sample size", ylab="Variance")
#for (n in seq(3, 31, 2)) {
#    for (i in 1:100) {
#        x <- rnorm(n, mean=10, sd=2)
#        points(n, var(x))
#    }
#}
## seq(FROM, TO, DIV) ��
## rnorm(n, mean=M, sd=S) ��
## N�Ĥ��������(xi ~ N(10, 2))���������
## ����ɸ��ʬ���򻻽Ф���
## ����ˡ�3 ����31�ޤ�2�ֳ֤Υ٥��ȥ���
## (3, 5, ..., 31)
## �����30�󷫤��֤���������Ԥ�
## �ĤޤꡢVi=3���⡢Vi=31�λ�������
## ʬ���Ͼ������ޤȤޤ�


#garden  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\04_variance\\gardens.csv", sep=""))
#attach(garden)
#print(sqrt(var(gardenA) / length(gardenA)))
#print(sqrt(var(gardenB) / length(gardenB)))
#print(sqrt(var(gardenC) / length(gardenC)))
# sqrt() ... ʿ����
# sqrt(var(X) / length(X)) �ϡ�ɸ����Ȥʤ�

#print(qt(0.025, 9))
#print(qt(0.975, 9))
## qt(ALPHA, FD) ... t�ͤ���Ϥ���
##    ALPHA ... ����
##    FD    ... ��ͳ��(ɸ�ܿ�-1)
#print(qt(0.975, 9) * sqrt(var(gardenB) / length(gardenB)))
#print(qt(0.025, 9) * sqrt(var(gardenB) / length(gardenB)))
## �����֡�ɸ��ʿ�ѡ�t�͡�ɸ����Ƿ׻��Ǥ���


# ---------------------------------------------------------------------------------------------------------
#skew    <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\04_variance\\skewdata.csv", sep=""))
#attach(skew)
#names(skew)
## names(DATAFRAME) : �ǡ����ե졼��˴ޤޤ���ѿ����Τ�
#plot(c(0, 30), c(0, 60), type="n", xlab="Sample size", ylab="Confidence interval")
#for (k in seq(6, 30, 3)) {
#    a <- numeric(10000)
#    for (i in 1:10000) {
#        a[i] <- mean(sample(values, k, replace=T))
#    }
#    points(c(k, k), quantile(a, c(0.025, 0.975)), type="b", pch=21, bg="red")
#    #points(c(k, k, k), quantile(a, c(0.025, 0.50, 0.975)), type="b", pch=21, bg="red")
#    # ���Τ褦�˵��Ҥ���С�3���֤����褹��
#}
## numeric(N) ... 0��N���¤٤��٥��ȥ������
## sample(VEC, N, replace=BOOL) ... ̵�����Ф�Ԥ�
##    N ... ��п�
##    replace=BOOL ... ������Ф���������Ф�
## quantile(VEC, (X1, X2, ...)) ... �٥��ȥ��X1%�������͡�X2%����...�����Ǥ���Ф���
## �֡��ȥ��ȥ�å�ˡ... ��������Фˤ��ɸ��ʿ�ѷ׻������̤β���Ԥ���
##                       �����椫�顢����Υѡ�����������ͤ���Ф���
##                       ɸ��ʿ�Ѥϡ���ʿ���ն�˸ǤޤäƤ���ȹͤ�����
##                       (��п���¿���ۤɡ���ʿ�Ѥ��濴�˸Ǥޤ�)
##                       �����椫���%���˳�������ɸ��ʿ���ͤ���Ф���
#
#
#xv <- seq(5, 30.5, 0.1)
#yv <- mean(values) + 1.96 * sqrt(var(values) / xv)
#lines(xv, yv, col="blue")
#yv <- mean(values) - 1.96 * sqrt(var(values) / xv)
#lines(xv, yv, col="blue")
## ɸ������ʬ�ۤ�p�ͤ���ζ��
#
#
#yv <- mean(values) + qt(0.975, xv-1) * sqrt(var(values) / xv)
#lines(xv, yv, lty=2, col="purple")
#yv <- mean(values) - qt(0.975, xv-1) * sqrt(var(values) / xv)
#lines(xv, yv, lty=2, col="purple")
## t�ͤ���ζ��
# ---------------------------------------------------------------------------------------------------------

#ex  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\example.csv", sep=""))
#attach(ex)
#names(ex)
#print(summary(ex))
## summary() ... ɸ�ܤ������Ԥ�
## Min    ... �Ǿ���
## 1st Qu ... ��1��ʬ����
## Median ... ��ǥ�����
## Mean   ... ʿ����
## 3rd Qu ... ��3��ʬ����
## Max    ... ������
#boxplot(y)
## Ȣ�Ҥ��ޤ����褹��
#hist(y)
## �ҥ��ȥ������������
## �ҥ��ȥ����ζ�����
##             +---+
##             |   |
##   +---+     |   |     +---+
##   |   |     |   |     |   |
##   |   |     |   |     |   |
## ---------1---------2---------3
##  0 ~ 0.9 | 1 ~ 1.9 | 2 ~ 2.9 |
## �Ȥ��ä����ˡ����������ͤϱ�¦�˴ޤޤ��

##print(table(y))
## ������ٿ���ɽ������
## length(table(x)) �ǽ�ʣ���ʤ��ǡ����Ŀ���ɽ������
## �ҥ��ȥ����Τ褦���ٿ��򼨤��ץ�åȤˤ����ơ�
## �����ٿ����ɤ��1�Ǥ����Τ���ʪ�ץ�åȤȸƤФ��
#print(range(y))
#print(diff(range(y)))
## diff() ... 2���֤��ϰϤ��̤���Ϥ���

#score <- 2:12
#ways <- c(1,2,3,4,5,6,5,4,3,2,1)
## ways �ϳ�score��ȯ�������Ȥ߹�碌��
## ex) ways�����7��(1,6), (2,5), (3,4), (4,3), (5,2), (6,1) ��6�̤ꤢ��
#game <- rep(score, ways)
#sample(game, 1)
## rep(X, Y) ... X�٥��ȥ�γ����Ǥ�Y��ȯ��������
##               Y���٥��ȥ�ʤ顢X�٥��ȥ�γ����Ǥ�Y�٥��ȥ�γ����ǲ�ȯ��������
#outcome <- numeric(10000)
#for (i in 1:10000) { outcome[i] <- sample(game, 1) }
#hist(outcome, breaks=(1.5:12.5))
## breaks �ǲ������ϰϤ���ꤹ�뤳�Ȥ������


#mean.score <- numeric(10000)
#for (i in 1:10000) { mean.score[i] <- mean(sample(game, 3)) }
#hist(mean.score, breaks=(1.5:12.5), ylim=c(0, 3000), col="blue", main="")
## breaks �ǲ������ϰϤ���ꤹ�뤳�Ȥ������
#xv <- seq(2, 12, 0.1)
#yv <- 10000*dnorm(xv, mean(mean.score), sd(mean.score))
#lines(xv, yv, col="red")
## ɸ��ʿ�Ѥ�ʬ�ۤ�����ȡ��濴�˸������������
## dnorm(Q, M, S) ... N(M, S) ��ʬ�ۤˤ����ơ�XQ�λ��γ�Ψ�����(��Ψ̩��)

#standard.deviation <- seq(-3, 3, 0.01)
#pd <- dnorm(standard.deviation)
#plot(standard.deviation, pd, type="l", col="blue")
## dnorm() ��ʿ�Ѥ�ɸ���к�����ꤷ�ʤ��ȡ�ɸ������ʬ�ۤ���Ϥ���
## type="l" ... ���ץ�å�
## ɸ����ʬ�ۤ˽���X��-3~3�Ǥۤ����ƽи�����

#print(pnorm(-2))
#print(pnorm(-1))
#print(1 - pnorm(2))
## -��~ q �ޤǤγ�Ψ(����ʬ�۴ؿ�)��pnorm(Q) ��ɽ�����
## ��¦��Ψ(q ~ ��)�� pnorm(1 - Q )�ǵ�����

#qnorm(c(0.025, 0.975))
## dnorm(Q) ����Q���γ�ΨD%����Ϥ���Τ��Ф���
## qnorm(D) ��D%�Ȥʤ�ʬ����Q������Ϥ���

#xv <- seq(-3, 3, 0.01)
#yv <- dnorm(xv)
#plot(c(3, -3), c(0, 0.3), xlim=c(3, -3), ylim=c(0, 0.4), type="n", ylab="pd", xlab="standard.deviations")
#polygon(c(1.96, 1.96, -1.96, -1.96, xv[105:496]), 
#        c(yv[496], 0, 0, yv[105], yv[105:496]),
#        col="lightblue")
#polygon(c(-1.96, -1.96, xv[1], xv[1:104]), 
#        c(yv[104], 0, 0, yv[1:104]),
#        col="red")
#polygon(c(xv[601], xv[601], 1.96, 1.96, xv[497:601]), 
#        c(yv[601], 0, 0, yv[496:601]),
#        col="red")
#text(0, 0.2, "95%")
#lines(xv, yv)
## polygon() �ǥץ�åȤ˺̿��������
#
#
#ht <- seq(150, 190, 0.01)
#plot(ht, dnorm(ht, 170, 8), type="l", ylab="Probability density", xlab="Height")
## pnorm() �ΰ�����Z�ͤΤ��ᡢ
## ��������ʬ�ۤ����Τꤿ����Ψ�����ˤϡ�
## z�Ѵ���Ԥ�ɬ�פ�����
#z <- (160 - 170) / 8
#print(pnorm(z))
## ��Ф���ɸ�ܤ�160cm �ʲ��ο�Ĺ�γ�Ψ


#skew    <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\skewdata.csv", sep=""))
#attach(skew)
#qqnorm(values)
#qqline(values, lty=2)
## qqnorm () ... QQ�ץ�åȤ�����
## qqline () ... ��Ŭ���ľ��������


#light   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\light.csv", sep=""))
#attach(light)
#print(names(light))
#hist(speed)

#light   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\light.csv", sep=""))
#attach(light)
#print(wilcox.test(speed, mu=990))
## wilcox.test(VEC, M) ... �����륳������������̸����Ԥ�


#light   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\light.csv", sep=""))
#attach(light)
#a <- numeric(10000)
#for (i in 1:10000) { a[i] <- mean(sample(speed, replace=T)) }
#hist(a)
#print(max(a))
## p91. �֡��ȥ��ȥ�å�ˡ�ˤ��1ɸ�ܲ��⸡������
## sample() ����в���λ��꤬�ʤ���硢�٥�����������ʬ��Ф��롣
## ������ФΤ����濴�˸������������


#p.93 �����塼�ǥ�Ȥ�tʬ��
#plot(c(0, 30), c(0, 10), type="n", xlab="Degrees of freedom", ylab="Student t value")
#lines(1:30, qt(0.975, df=1:30))
#abline(h=1.96, lty=2, col="blue")
## plot()  ... type="n" �ϲ���ץ�åȤ��ʤ�

#xvs <- seq(-4, 4, 0.01)
#plot(xvs, dnorm(xvs), type="l", ylab="Probability density", xlab="Deviates")
#lines(xvs, dt(xvs, df=5), col="red")
## tʬ�ۤϸ���ο������
## ���Τ��ᡢ�����֤������ʤ�
## (���������ʤ����ꡢ�濴�γ�Ψ�����ʤ��ʤ�Τ�)
## dnorm(X)     ... ����ʬ�ۤ˽���x�γ�Ψ̩�٤����
## dt(T, df=DF) ... tʬ�ۤ˽���t�γ�Ψ̩�٤����


#p.95 ����
#skew <- function (x) {
#   m3 <- sum((x - mean(x))^3) / length(x)
#   s3 <- sqrt(var(x))^3
#   return (m3 / s3)
#}
#x       <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\skewdata.csv", sep=""))
#attach(x)
#hist(values, main="", col="lightblue")
#print(skew(values))
#print(skew(values) / sqrt(6 / length(values)))

#n     <- 10000
#sskew <- numeric(n)
#tskew <- skew(values)
#dev   <- 0
#for (i in 1:n) {
#    sskew[i] <- skew(sample(values, replace=T))
#    dev      <- dev + (tskew - sskew[i])^2
#}
#se_skew <- sqrt(dev / length(sskew))
#print(paste("st err skew(calc) = ", se_skew))
#print(paste("st err skew(aprx) = ", sqrt(6 / 30)))
#hist(sskew)
## ���٤�ʿ�Ѽ����3���⡼����(m3)��
## ɸ���к���3��ǳ�ä����
## (����ϡ�ɸ���Ѳ���Z��3�褷����Τδ����ͤ�Ʊ��)
## ���٤�ɸ����ϡ�6/N��ʿ�����Ƕ���ͤ�������
## ���٤��ꤹ�뤿��ˤϡ����٤ο����ͤ�ɸ�����
## �������뤳�Ȥǡ�N-2��tʬ�ۤ˽���t�ͤˤʤ�





#p.97 ����
#kurtosis <- function(x) {
#    m4 <- sum((x - mean(x))^4) / length(x)
#    s4 <- var(x)^2
#    m4 / s4 - 3
#}
#x       <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\skewdata.csv", sep=""))
#attach(x)
#print(kurtosis(values))
#se_kurt <- sqrt(24 / length(values))
#print(paste("st err skew(aprx) = ", se_kurt))
## ���٤�ʿ�Ѽ����4���⡼���Ȥ�(m4)��
## ɸ���к���4��(ʬ����2��)�ǳ�ä����
## ������������ʬ�ۤ����٤򥼥�Ȥ��뤿���-3����
## (m4/s4��������ʬ�ۤ˽������Ĥ����٤�3�Ȥʤ뤿��)
## ���٤�ɸ�����24/N��ʿ�����Ƕ���ͤ�������
## ���٤��ꤹ�뤿��ˤϡ����٤ο����ͤ�ɸ�����
## �������뤳�Ȥǡ�N-2��tʬ�ۤ˽���t�ͤˤʤ�









#Section 6 ... 2ɸ��ʬ��
#p.99 ʬ�������
#print(qf(0.975, 9, 9))
#f.test.data <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\06_two_data\\f.test.data.csv", sep=""))
#attach(f.test.data)
#print(names(f.test.data))
#f.ratio <- var(gardenB) / var(gardenC)
#if (f.ratio < 1) { f.ratio <- var(gardenC) / var(gardenB) }
#print(paste("f.ratio = ", f.ratio))
#f.per   <- 2 * (1 - pf(f.ratio, 9, 9))
#print(paste("f.per   = ", f.per))
## qf(ALPHA, DF1, DF2) ... Fʬ�ۤ˽���F�ͤ�ʬ��������Ϥ���
##    ALPHA ... ���ѡ��������
##    DF1   ... �礭������ʬ���μ�ͳ��(N-1)
##    DF2   ... ����������ʬ���μ�ͳ��(N-1)
## pf(F, DF1, DF2) ... F�ͤ����ѳ�Ψ
## ʬ����θ��ꡥ������ʬ������������̵����Ȥ���ȡ�
##                   F�ͤ�ɸ��ʬ������ɸ��ʬ�����ǵ�ޤ�
##                   ���Σ��ͤˤ������Ψ�����
##                   �����ˣ�ʬ�ۤδ��Ѱ����Ƥ�����
##                   ���γ�Ψ�����Ѱ�ʤ�С����Ѥ���
##                   (�̾ɸ��ʬ�����羮�ط�������ʬ��
##                   �ˤ�ɽ���Ϥ��ǡ����Ѱ�ξ�¦��Ψ�ˤĤ���
##                   ��Ƥ���뤬��
##                   ��ʬ�����羮�ط���ɸ��ʬ���Τ����
##                   �ۤʤä��������ͤϣ������ͤȤʤ뤿�ᡢ
##                   ���ξ��γ�Ψ���ᡢ���Ѱ�β�¦��Ψ�ʲ���
##                   �ʤ뤫�⸡Ƥ����)
#print(var.test(gardenB, gardenC))
## var.test(X1, X2) ... F�����Ԥ�
##     X1, X2�ǡ�X1��ʬ�ҡ�X2��ʬ���ɸ�ܤȤʤ�


#p.102 �����塼�ǥ�Ȥ�t����
#print(qt(0.975, 18))
#t.test.data <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\06_two_data\\t.test.data.csv", sep=""))
#attach(t.test.data)
#print(names(t.test.data))
#ozone <- c(gardenA, gardenB)
#label <- factor(c(rep("A", 10), rep("B", 10)))
#boxplot(ozone ~ label, notch=T, xlab="Garden", ylab="Ozone, pphm", col="lightblue")
#s2A <- var(gardenA)
#s2B <- var(gardenB)
#mA  <- mean(gardenA)
#mB  <- mean(gardenB)
#t   <- (mA - mB) / sqrt(s2A / length(gardenA) + s2B / length(gardenB))
#print(paste("t-val   = ", t))
## factor() ... ���ƥ����ѿ��ˤ���
## ozone ~ label �Τ褦�˽񤯤��Ȥǡ�gardenA��A��gardenB��B�Τ褦�˥��ƥ���ʬ�����Ƥ���
## boxplot() �Υѥ�᥿notch= ��T����ꤹ�뤳�Ȥǡ�95%��֤�Ļ벽���뤳�Ȥ������
##   ____________
##   |          |
##   |          |  
##   \          / <- 95% notch
##    \        /
##     --------
##    /        \
##   /          \ <-  5% notch
##   |          |
##   |          |
##   ������������������������������������  


#p.105 �����륳������ν���¸���
t.test.data <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\06_two_data\\t.test.data.csv", sep=""))
attach(t.test.data)
ozone <- c(gardenA, gardenB)
label <- c(rep("A", 10), rep("B", 10))
combined.ranks <- rank(ozone)
print(tapply(combined.ranks, label, sum))
print(wilcox.test(gardenA, gardenB))
# �����륳������ν���¸���ϥ����塼�ǥ�Ȥ�t�����
# �Υ�ѥ���(����ʬ�ۤ��ꤷ�ʤ�)�Ǥ���
# 2ɸ�ܤ�Ż��ƽ�̤��դ���
# (����������̥�����Ʊ��̤ǡ������⤽�ν�̤�ʿ���ͤˤ���)
# (�㤨�С�5�̡�6�̡�7�̤������ξ�硢(5+6+7)/3 = ƱΨ5.6��)
# 2ɸ�ܤ�ʬ�򤷡����줾��ν���¤����
# ����������ɸ�ܤ��ͤ�������¿�ɽ���⾮������С�
# ��̵�������Ѥ���
#     https://data-science.gr.jp/theory/tst_wilcoxon_rank_sum_test.html
# rank() ... �Ϥ��ν���դ�����Ϥ���
# wilcox.test(X1, X2) ... 2�Ĥ�ɸ�ܤ��Ф���wilcox�ν���¸����Ԥ�
#     (�����������δؿ��Ͻ����ɽ�ˤ�븡��ǤϤʤ�����������ǵ��
#     z�ͤ�ɾ���򵯤��ʤ�)
# 



















