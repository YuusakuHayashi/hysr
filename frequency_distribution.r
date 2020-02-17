setwd("C:/Users/yuusaku.hayashi/project/hysr")
df <- read.csv("screen.csv",header=T,row.names=1)
#ans <- lm(df$Vc~df[,c(3,2,1)])
data <- c(df$normal)
data <- data[c(-1)]
class.width <- length(data)
class.width <- ceiling(class.width)
class.max <- max(data)
class.min <- min(data)

#s   <- summary(ans)
#coe <- s$coefficient            #回帰係数
#aic <- AIC(ans)                 #AIC
#N   <- length(y)
#res <- cbind(coe,aic,N)
#res[2:nrow(res),5:6] <- "" 
#
#write.table(
#    matrix(c("",colnames(res)),nrow=1),
#    "result2.csv",
#    append=T,
#    quote=F,
#    sep=",",
#    row.names=F,
#    col.names=F)
#write.table(res,"result2.csv",append=T,quote=F,sep=",",row.names=T,col.names=F)
