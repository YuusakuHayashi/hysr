m <- matrix(nrow=47, ncol=100)
for (i in 1:nrow(m)) {
    for (j in 1:ncol(m)) {
        m[i,j] <- rnorm(1, mean=170, sd=6)
    }
}
write(m, file=paste(Sys.getenv("USERPROFILE"), "\\project\\hysr\\test.csv", sep=""))
