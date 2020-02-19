setwd("C:/Users/yuusaku.hayashi/project/hysr")
df <- read.csv("screen.csv",header=T,row.names=1)
#ans <- lm(df$Vc‾df[,c(3,2,1)])
data <- c(df$normal)
data <- data[c(-1)]
data.length <- length(data)

# class width
class.width <- nclass.Sturges(data)
cat("class width = ", class.width, "\n")

# separate each classes
: class value
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

get_class_value <- function (cls, dat) {
  cls.max <- max(cls)
  cls.min <- min(cls)
  cls.val <- (class.cls1.max + class.cls1.min) / 2
  cls.frq <- length(cls)
  cls.rfr <- cls.frq / dat.length
  cat("class value = ",              cls.val, "\n")
  cat("class frequency = ",          cls.frq, "\n")
  cat("class relative frequency = ", cls.rfr, "\n")
}

class.cls1 <- get_class_value (class.cls1, data)
class.cls2 <- get_class_value (class.cls2, data)
class.cls3 <- get_class_value (class.cls3, data)
class.cls4 <- get_class_value (class.cls4, data)
class.cls5 <- get_class_value (class.cls5, data)
class.cls6 <- get_class_value (class.cls6, data)
class.cls7 <- get_class_value (class.cls7, data)

#hist(data)

#if (!require("ggplot2")) {
#  install.packages(c("ggplot2"), repos="https://cran.rstudio.com/")
#  libraly(ggplot2)
#}

#s   <- summary(ans)
#coe <- s$coefficient            #蝗槫ｸｰ菫よ焚
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
