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

yvals   <- read.csv(paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\03_center\\yvalues.csv", sep=""))
attach(yvals)

mean(y)

median(y)
# median(Y) �� Y�������Ĥξ�硢�������2�ǡ������ͤ�ʿ�Ѥ�Ȥ�

insects <- 100000^0.2
# ^ ... �٤���黻��
# (ʬ���Ǥ٤���򤹤�ȡ��߾躬n��X����ޤ�)

insects <- c(1, 10, 1000, 10, 1)
ex      <- exp(mean(log(insects)))
# log(VEC) �ǳ����Ǥ��Ф��������п���Ȥ�
# ���μ����п���ʿ�Ѥǻؿ��ؿ���׻�����ȡ�
