setwd("C:/Users/yuusaku.hayashi/project/hysr")
df <- read.csv("screen.csv",header=T,row.names=1)
#ans <- lm(df$Vc~df[,c(3,2,1)])
data <- c(df$normal)
data <- data[c(-1)]
data.length <- length(data)

# class width
class.width <- nclass.Sturges(data)
cat("class width = ", class.width, "\n")

# separate each classes
# class value
# class frequency
# relative frequency

sd <-sort(data)
class.cls1 <- subset(sd,  0 <= sd & sd < 12)
class.cls2 <- subset(sd, 12 <= sd & sd < 23)
class.cls3 <- subset(sd, 23 <= sd & sd < 34)
class.cls4 <- subset(sd, 34 <= sd & sd < 45)
class.cls5 <- subset(sd, 45 <= sd & sd < 56)
class.cls6 <- subset(sd, 56 <= sd & sd < 67)
class.cls7 <- subset(sd, 67 <= sd)

class.cls1.max <- max(class.cls1)
class.cls1.min <- min(class.cls1)
class.cls1.val <- (class.cls1.max + class.cls1.min)/2
class.cls1.frq <- length(class.cls1)
class.cls1.rfr <- class.cls1.frq / data.length
cat("class1 value = ", class.cls1.val, "\n")
cat("class1 freqency = ", class.cls1.frq, "\n")
cat("class1 relative freqency = ", class.cls1.rfr, "\n")

class.cls2.max <- max(class.cls2)
class.cls2.min <- min(class.cls2)
class.cls2.val <- (class.cls2.max + class.cls2.min)/2
class.cls2.frq <- length(class.cls2)
class.cls2.rfr <- class.cls2.frq / data.length
cat("class2 value = ", class.cls2.val, "\n")
cat("class2 freqency = ", class.cls2.frq, "\n")
cat("class2 relative freqency = ", class.cls2.rfr, "\n")

class.cls3.max <- max(class.cls3)
class.cls3.min <- min(class.cls3)
class.cls3.val <- (class.cls3.max + class.cls3.min)/2
class.cls3.frq <- length(class.cls3)
class.cls3.rfr <- class.cls3.frq / data.length
cat("class3 value = ", class.cls3.val, "\n")
cat("class3 freqency = ", class.cls3.frq, "\n")
cat("class3 relative freqency = ", class.cls3.rfr, "\n")

class.cls4.max <- max(class.cls4)
class.cls4.min <- min(class.cls4)
class.cls4.val <- (class.cls4.max + class.cls4.min)/2
cat("class4 value = ", class.cls4.val, "\n")

class.cls5.max <- max(class.cls5)
class.cls5.min <- min(class.cls5)
class.cls5.val <- (class.cls5.max + class.cls5.min)/2
cat("class5 value = ", class.cls5.val, "\n")

class.cls6.max <- max(class.cls6)
class.cls6.min <- min(class.cls6)
class.cls6.val <- (class.cls6.max + class.cls6.min)/2
cat("class6 value = ", class.cls6.val, "\n")

class.cls7.max <- max(class.cls7)
class.cls7.min <- min(class.cls7)
class.cls7.val <- (class.cls7.max + class.cls7.min)/2
cat("class7 value = ", class.cls7.val, "\n")

#hist(data)

#if (!require("ggplot2")) {
#  install.packages(c("ggplot2"), repos="https://cran.rstudio.com/")
#  libraly(ggplot2)
#}

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