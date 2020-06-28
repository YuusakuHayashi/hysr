


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
## barplot() で、棒グラフを描画する
## nitrogen, phosphorus のyes, no によって応答するyield について、
## nitrogen=yes, phosphorus=yes の場合の相互作用を観察するために、
## tapply() でnitrogen, phosphorus の組み合わせ毎の平均を計算し、
## phosphorus について描画する。
## この時、phosphorus=no, yes のそれぞれに、nitrogen=yes, no の
## 2値、計4値の棒グラフが出力される 

#yvals   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\03_center\\yvalues.csv", sep=""))
#attach(yvals)
#
#mean(y)
#
#median(y)
# median(Y) は Yが偶数個の場合、真ん中の2データの値の平均を使う

#insects <- 100000^0.2
# ^ ... べき乗演算子
# (分数でべき乗をすると、累乗根n√Xが求まる)

#insects <- c(1, 10, 1000, 10, 1)
#ex      <- exp(mean(log(insects)))
# log(VEC) で各要素に対し、自然対数をとる
# その自然対数の平均で指数関数を計算すると、

#upper <- rep(c(100, 200), 10)
#plot(upper, type="l", ylim=c(0,250), ylab="y", col="blue")
#lower <- rep(c(10, 20), 10)
#lines(lower, col="blue")
## lines() で既に作成したプロットに描画できる

# Section-3 Center Value
#upper <- rep(c(100, 200), 10)
#plot(log(upper), type="l", ylim=c(0,10), ylab="y", col="blue")
#lower <- rep(c(10, 20), 10)
#lines(log(lower), col="blue")
# 変動率を見たいとき、
# この二者(upper, lower)は実際には同じ変動率を持つが、プロットすると、
# upper は母数が大きいため、lowerより大きな変動をしているように
# 見えやすい。誤解しないように対数を取って確認する


# Section-4 Diviation
#y <- c(13, 7, 5, 12, 9, 15, 6, 11, 9, 7, 12)
#plot(y, ylim=c(0, 20), pch=16, col="blue")
# range(y)
# range(VEC) はベクトルの最大値、最小値の２つを表示する
#lines(c(4.5, 5.5), c(15, 15), lty=2, col="red")
#lines(c(3.5, 4.5), c(5, 5), lty=2, col="red")
#lines(c(4.5, 4.5), c(5, 15), col="red")
# lty は線のスタイルを定義している、lty=2 は点線

#y <- c(13, 7, 5, 12, 9, 15, 6, 11, 9, 7, 12)
#plot(y, ylim=c(0, 20), pch=16, col="blue")
#abline(h=mean(y))
# abline()でグラフに軸線を引く？
# h=Y でX軸に水平な線を引いている
#for(i in 1:length(y)) { lines(c(i, i), c(mean(y), y[i]), col="red") }

#y <- c(13, 7, 5, 12, 9, 15, 6, 11, 9, 7, 12)
#print(sum((y - mean(y))^2))
## 平方和
#print(var(y))
## 分散
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
## pf(F, NUMERATOR, DEMOMINATOR) ... f分布の累積分布関数
##    F ... F値
##    NUMERATOR   ... 分子の分散の自由度
##    DEMOMINATOR ... 分母の分散の自由度
## pf() でそのF1値以下が発生する確率が求められるので、
## 1 - pf() でF1値以上場合の発生確率が求まる
## ただし、分散が有意に低い場合(F2以下)の両側の確率は
## 2 * (1 - pf()) となる
## +-----+----------+----------+-----
## 0     F2         M          F1

#garden  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\04_variance\\gardens.csv", sep=""))
#attach(garden)
#print(var.test(gardenB, gardenC))
## var.test(S1, S2) ... F検定を行う
##     S1 ... 標本1
##     S2 ... 標本2
## 出力結果は
## F値はS1とS2の分散比
## num df値は、分子の分散の自由度(numerator degree of free)
## denom df値は、分子の分散の自由度(denominator degree of free)
## p-value値は、2つの母分散が等しいと仮定した場合に、
## この分散比が発生する確率
## alternative hypothesis は対立仮説で、分散が等しくないとしている
## 95 percent confidence interval が95%点であり、
## sample estimatesでサンプルとしてのF値を計算している

#plot(c(0,32), c(0,15), type="n", xlab="Sample size", ylab="Variance")
#for (n in seq(3, 31, 2)) {
#    for (i in 1:100) {
#        x <- rnorm(n, mean=10, sd=2)
#        points(n, var(x))
#    }
#}
## seq(FROM, TO, DIV) で
## rnorm(n, mean=M, sd=S) で
## N個の正規乱数(xi ~ N(10, 2))を作成し、
## その標本分散を算出する
## さらに、3 から31まで2間隔のベクトル毎
## (3, 5, ..., 31)
## これを30回繰り返した処理を行う
## つまり、Vi=3よりも、Vi=31の時の方が
## 分散は小さくまとまる


#garden  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\04_variance\\gardens.csv", sep=""))
#attach(garden)
#print(sqrt(var(gardenA) / length(gardenA)))
#print(sqrt(var(gardenB) / length(gardenB)))
#print(sqrt(var(gardenC) / length(gardenC)))
# sqrt() ... 平方根
# sqrt(var(X) / length(X)) は、標準誤差となる

#print(qt(0.025, 9))
#print(qt(0.975, 9))
## qt(ALPHA, FD) ... t値を出力する
##    ALPHA ... α点
##    FD    ... 自由度(標本数-1)
#print(qt(0.975, 9) * sqrt(var(gardenB) / length(gardenB)))
#print(qt(0.025, 9) * sqrt(var(gardenB) / length(gardenB)))
## 信頼区間＝標本平均±t値×標準誤差で計算できる


# ---------------------------------------------------------------------------------------------------------
#skew    <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\04_variance\\skewdata.csv", sep=""))
#attach(skew)
#names(skew)
## names(DATAFRAME) : データフレームに含まれる変数を知る
#plot(c(0, 30), c(0, 60), type="n", xlab="Sample size", ylab="Confidence interval")
#for (k in seq(6, 30, 3)) {
#    a <- numeric(10000)
#    for (i in 1:10000) {
#        a[i] <- mean(sample(values, k, replace=T))
#    }
#    points(c(k, k), quantile(a, c(0.025, 0.975)), type="b", pch=21, bg="red")
#    #points(c(k, k, k), quantile(a, c(0.025, 0.50, 0.975)), type="b", pch=21, bg="red")
#    # このように記述すれば、3点間で描画する
#}
## numeric(N) ... 0をN個並べたベクトルを生成
## sample(VEC, N, replace=BOOL) ... 無作為抽出を行う
##    N ... 抽出数
##    replace=BOOL ... 復元抽出か非復元抽出か
## quantile(VEC, (X1, X2, ...)) ... ベクトルのX1%地点の値、X2%地点...の要素を抽出する
## ブートストラップ法... 非復元抽出による標本平均計算を大量の回数行い、
##                       その中から、特定のパーセント点の値を取り出す。
##                       標本平均は、母平均付近に固まっていると考えられる
##                       (抽出数が多いほど、母平均の中心に固まる)
##                       その中からα%点に該当する標本平均値を抽出する
#
#
#xv <- seq(5, 30.5, 0.1)
#yv <- mean(values) + 1.96 * sqrt(var(values) / xv)
#lines(xv, yv, col="blue")
#yv <- mean(values) - 1.96 * sqrt(var(values) / xv)
#lines(xv, yv, col="blue")
## 標準正規分布のp値からの区間
#
#
#yv <- mean(values) + qt(0.975, xv-1) * sqrt(var(values) / xv)
#lines(xv, yv, lty=2, col="purple")
#yv <- mean(values) - qt(0.975, xv-1) * sqrt(var(values) / xv)
#lines(xv, yv, lty=2, col="purple")
## t値からの区間
# ---------------------------------------------------------------------------------------------------------

#ex  <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\example.csv", sep=""))
#attach(ex)
#names(ex)
#print(summary(ex))
## summary() ... 標本の要約を行う
## Min    ... 最小値
## 1st Qu ... 第1四分位点
## Median ... メディアン
## Mean   ... 平均値
## 3rd Qu ... 第3四分位点
## Max    ... 最大値
#boxplot(y)
## 箱ひげ図を描画する
#hist(y)
## ヒストグラムを作成する
## ヒストグラムの境界点
##             +---+
##             |   |
##   +---+     |   |     +---+
##   |   |     |   |     |   |
##   |   |     |   |     |   |
## ---------1---------2---------3
##  0 ~ 0.9 | 1 ~ 1.9 | 2 ~ 2.9 |
## といった具合に、境界点の値は右側に含まれる

##print(table(y))
## 値毎の度数を表示する
## length(table(x)) で重複しないデータ個数を表示する
## ヒストグラムのような度数を示すプロットにおいて、
## その度数がどれも1であるものは敷物プロットと呼ばれる
#print(range(y))
#print(diff(range(y)))
## diff() ... 2点間の範囲の量を出力する

#score <- 2:12
#ways <- c(1,2,3,4,5,6,5,4,3,2,1)
## ways は各scoreが発生する組み合わせ数
## ex) waysの中央7は(1,6), (2,5), (3,4), (4,3), (5,2), (6,1) の6通りある
#game <- rep(score, ways)
#sample(game, 1)
## rep(X, Y) ... Xベクトルの各要素をY回発生させる
##               Yがベクトルなら、Xベクトルの各要素とYベクトルの各要素回発生させる
#outcome <- numeric(10000)
#for (i in 1:10000) { outcome[i] <- sample(game, 1) }
#hist(outcome, breaks=(1.5:12.5))
## breaks で横軸の範囲を指定することが出来る


#mean.score <- numeric(10000)
#for (i in 1:10000) { mean.score[i] <- mean(sample(game, 3)) }
#hist(mean.score, breaks=(1.5:12.5), ylim=c(0, 3000), col="blue", main="")
## breaks で横軸の範囲を指定することが出来る
#xv <- seq(2, 12, 0.1)
#yv <- 10000*dnorm(xv, mean(mean.score), sd(mean.score))
#lines(xv, yv, col="red")
## 標本平均を分布させると、中心極限定理が現れる
## dnorm(Q, M, S) ... N(M, S) の分布において、XQの時の確率を出力(確率密度)

#standard.deviation <- seq(-3, 3, 0.01)
#pd <- dnorm(standard.deviation)
#plot(standard.deviation, pd, type="l", col="blue")
## dnorm() に平均と標準偏差を指定しないと、標準正規分布を出力する
## type="l" ... 線プロット
## 標準積分布に従うXは-3~3でほぼ全て出現する

#print(pnorm(-2))
#print(pnorm(-1))
#print(1 - pnorm(2))
## -∞~ q までの確率(累積分布関数)はpnorm(Q) で表される
## 上側確率(q ~ ∞)は pnorm(1 - Q )で求められる

#qnorm(c(0.025, 0.975))
## dnorm(Q) が、Q点の確率D%を出力するのに対し、
## qnorm(D) はD%となる分位点Q点を出力する

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
## polygon() でプロットに彩色が出来る
#
#
#ht <- seq(150, 190, 0.01)
#plot(ht, dnorm(ht, 170, 8), type="l", ylab="Probability density", xlab="Height")
## pnorm() の引数はZ値のため、
## ある正規分布から知りたい確率を求めるには、
## z変換を行う必要がある
#z <- (160 - 170) / 8
#print(pnorm(z))
## 抽出した標本が160cm 以下の身長の確率


#skew    <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\skewdata.csv", sep=""))
#attach(skew)
#qqnorm(values)
#qqline(values, lty=2)
## qqnorm () ... QQプロットを描画
## qqline () ... 最適近似直線を描画


#light   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\light.csv", sep=""))
#attach(light)
#print(names(light))
#hist(speed)

#light   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\light.csv", sep=""))
#attach(light)
#print(wilcox.test(speed, mu=990))
## wilcox.test(VEC, M) ... ウィルコクソンんの符号順位検定を行う


#light   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\05_one_data\\light.csv", sep=""))
#attach(light)
#a <- numeric(10000)
#for (i in 1:10000) { a[i] <- mean(sample(speed, replace=T)) }
#hist(a)
#print(max(a))
## p91. ブートストラップ法による1標本仮説検定問題
## sample() は抽出回数の指定がない場合、ベクターサイズ分抽出する。
## 復元抽出のため中心極限定理が現れる


#p.93 スチューデントのt分布
#plot(c(0, 30), c(0, 10), type="n", xlab="Degrees of freedom", ylab="Student t value")
#lines(1:30, qt(0.975, df=1:30))
#abline(h=1.96, lty=2, col="blue")
## plot()  ... type="n" は何もプロットしない

#xvs <- seq(-4, 4, 0.01)
#plot(xvs, dnorm(xvs), type="l", ylab="Probability density", xlab="Deviates")
#lines(xvs, dt(xvs, df=5), col="red")
## t分布は厚めの裾を持つ
## そのため、信頼区間が広くなる
## (裾が厚くなる代わり、中心の確率が少なくなるので)
## dnorm(X)     ... 正規分布に従うxの確率密度を出力
## dt(T, df=DF) ... t分布に従うtの確率密度を出力


#p.95 歪度
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
## 歪度は平均周りの3次モーメント(m3)を
## 標準偏差の3乗で割ったもの
## (これは、標準変化量Zを3乗したものの期待値と同じ)
## 歪度の標準誤差は、6/Nの平方根で近似値が得られる
## 歪度を検定するためには、歪度の推定値を標準誤差で
## 除算することで、N-2のt分布に従うt値になる





#p.97 尖度
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
## 尖度は平均周りの4次モーメントを(m4)を
## 標準偏差の4乗(分散の2乗)で割ったもの
## そこから正規分布の尖度をゼロとするために-3する
## (m4/s4だと正規分布に従う集団の尖度は3となるため)
## 尖度の標準誤差は24/Nの平方根で近似値が得られる
## 尖度を検定するためには、尖度の推定値を標準誤差で
## 除算することで、N-2のt分布に従うt値になる









#Section 6 ... 2標本分析
#p.99 分散の比較
#print(qf(0.975, 9, 9))
#f.test.data <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\06_two_data\\f.test.data.csv", sep=""))
#attach(f.test.data)
#print(names(f.test.data))
#f.ratio <- var(gardenB) / var(gardenC)
#if (f.ratio < 1) { f.ratio <- var(gardenC) / var(gardenB) }
#print(paste("f.ratio = ", f.ratio))
#f.per   <- 2 * (1 - pf(f.ratio, 9, 9))
#print(paste("f.per   = ", f.per))
## qf(ALPHA, DF1, DF2) ... F分布に従うF値の分位点を出力する
##    ALPHA ... αパーセント点
##    DF1   ... 大きい方の分散の自由度(N-1)
##    DF2   ... 小さい方の分散の自由度(N-1)
## pf(F, DF1, DF2) ... F値の累積確率
## 分散比の検定．．．母分散が等しいを帰無仮説とすると、
##                   F値は標本分散１／標本分散２で求まる
##                   このＦ値における確率を求める
##                   事前にＦ分布の棄却域を求めておき、
##                   その確率が棄却域ならば、棄却する
##                   (通常、標本分散の大小関係が、母分散
##                   にも表れるはずで、棄却域の上側確率について
##                   検討するが、
##                   母分散の大小関係が標本分散のそれと
##                   異なった時、Ｆ値は１／Ｆ値となるため、
##                   その場合の確率も求め、棄却域の下側確率以下に
##                   なるかも検討する)
#print(var.test(gardenB, gardenC))
## var.test(X1, X2) ... F検定を行う
##     X1, X2で、X1は分子、X2が分母の標本となる


#p.102 スチューデントのt検定
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
## factor() ... カテゴリ変数にする
## ozone ~ label のように書くことで、gardenAをA、gardenBをBのようにカテゴリ分けしている
## boxplot() のパラメタnotch= にTを指定することで、95%区間を可視化することが出来る
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
##   ¯¯¯¯¯¯¯¯¯¯¯¯  


#p.105 ウィルコクソンの順位和検定
t.test.data <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\06_two_data\\t.test.data.csv", sep=""))
attach(t.test.data)
ozone <- c(gardenA, gardenB)
label <- c(rep("A", 10), rep("B", 10))
combined.ranks <- rank(ozone)
print(tapply(combined.ranks, label, sum))
print(wilcox.test(gardenA, gardenB))
# ウィルコクソンの順位和検定はスチューデントのt検定の
# ノンパラ版(正規分布を仮定しない)である
# 2標本を纏めて順位を付ける
# (ただし、順位タイは同順位で、しかもその順位の平均値にする)
# (例えば、5位、6位、7位がタイの場合、(5+6+7)/3 = 同率5.6位)
# 2標本に分解し、それぞれの順位和を求める
# 小さい方の標本の値が、順位和数表よりも小さければ、
# 帰無仮説を棄却する
#     https://data-science.gr.jp/theory/tst_wilcoxon_rank_sum_test.html
# rank() ... はこの順位付けを出力する
# wilcox.test(X1, X2) ... 2つの標本に対し、wilcoxの順位和検定を行う
#     (ただし、この関数は順位和表による検定ではなく、正規近似で求め
#     z値の評価を起こなう)
# 



















