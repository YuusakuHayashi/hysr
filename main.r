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

upper <- rep(c(100, 200), 10)
plot(log(upper), type="l", ylim=c(0,10), ylab="y", col="blue")
lower <- rep(c(10, 20), 10)
lines(log(lower), col="blue")
# 変動率を見たいとき、
# この二者(upper, lower)は実際には同じ変動率を持つが、プロットすると、
# upper は母数が大きいため、lowerより大きな変動をしているように
# 見えやすい。誤解しないように対数を取って確認する
