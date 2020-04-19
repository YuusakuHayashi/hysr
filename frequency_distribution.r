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
=======
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
# class value
# class frequency
# relative frequency

class.sumfrq <- 0

sd <-sort(data)
cls1 <- subset(sd,  0 <= sd & sd < 12)
cls2 <- subset(sd, 12 <= sd & sd < 23)
cls3 <- subset(sd, 23 <= sd & sd < 34)
cls4 <- subset(sd, 34 <= sd & sd < 45)
cls5 <- subset(sd, 45 <= sd & sd < 56)
cls6 <- subset(sd, 56 <= sd & sd < 67)
cls7 <- subset(sd, 67 <= sd)

cls1.max <- max(cls1)                           ; cls1.max
cls1.min <- min(cls1)                           ; cls1.min
cls1.val <- (cls1.max + cls1.min) / 2           ; cls1.val
cls1.frq <- length(cls1)                        ; cls1.frq
cls1.rfr <- cls1.frq / length(data)             ; cls1.rfr
class.sumfrq <- class.sumfrq + cls1.frq         ; class.sumfrq
class.sumrfr <- class.sumfrq / length(data)     ; class.sumrfr

cls2.max <- max(cls2)                           ; cls2.max
cls2.min <- min(cls2)                           ; cls2.min
cls2.val <- (cls2.max + cls2.min) / 2           ; cls2.val
cls2.frq <- length(cls2)                        ; cls2.frq
cls2.rfr <- cls2.frq / length(data)             ; cls2.rfr
class.sumfrq <- class.sumfrq + cls2.frq         ; class.sumfrq
class.sumrfr <- class.sumfrq / length(data)     ; class.sumrfr

cls3.max <- max(cls3)                           ; cls3.max
cls3.min <- min(cls3)                           ; cls3.min
cls3.val <- (cls3.max + cls3.min) / 2           ; cls3.val
cls3.frq <- length(cls3)                        ; cls3.frq
cls3.rfr <- cls3.frq / length(data)             ; cls3.rfr
class.sumfrq <- class.sumfrq + cls3.frq         ; class.sumfrq
class.sumrfr <- class.sumfrq / length(data)     ; class.sumrfr

cls4.max <- max(cls4)                           ; cls4.max
cls4.min <- min(cls4)                           ; cls4.min
cls4.val <- (cls4.max + cls4.min) / 2           ; cls4.val
cls4.frq <- length(cls4)                        ; cls4.frq
cls4.rfr <- cls4.frq / length(data)             ; cls4.rfr
class.sumfrq <- class.sumfrq + cls4.frq         ; class.sumfrq
class.sumrfr <- class.sumfrq / length(data)     ; class.sumrfr

cls5.max <- max(cls5)                           ; cls5.max
cls5.min <- min(cls5)                           ; cls5.min
cls5.val <- (cls5.max + cls5.min) / 2           ; cls5.val
cls5.frq <- length(cls5)                        ; cls5.frq
cls5.rfr <- cls5.frq / length(data)             ; cls5.rfr
class.sumfrq <- class.sumfrq + cls5.frq         ; class.sumfrq
class.sumrfr <- class.sumfrq / length(data)     ; class.sumrfr

cls6.max <- max(cls6)                           ; cls6.max
cls6.min <- min(cls6)                           ; cls6.min
cls6.val <- (cls6.max + cls6.min) / 2           ; cls6.val
cls6.frq <- length(cls6)                        ; cls6.frq
cls6.rfr <- cls6.frq / length(data)             ; cls6.rfr
class.sumfrq <- class.sumfrq + cls6.frq         ; class.sumfrq
class.sumrfr <- class.sumfrq / length(data)     ; class.sumrfr

cls7.max <- max(cls7)                           ; cls7.max
cls7.min <- min(cls7)                           ; cls7.min
cls7.val <- (cls7.max + cls7.min) / 2           ; cls7.val
cls7.frq <- length(cls7)                        ; cls7.frq
cls7.rfr <- cls7.frq / length(data)             ; cls7.rfr
class.sumfrq <- class.sumfrq + cls7.frq         ; class.sumfrq
class.sumrfr <- class.sumfrq / length(data)     ; class.sumrfr

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
