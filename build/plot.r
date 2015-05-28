args <- commandArgs(trailingOnly = TRUE)
w1 <- read.csv(paste(args[1],".csv", sep=""))
# true <- subset(w1, w1$step4 == 1)
# false <- subset(w1, w1$step4 == 2)
png(paste("plots/", args[1], ".png", sep=""))
# plot(w1$message, w1$duration, col=c("red","blue")[w1$step4])
plot(w1$message, w1$duration)
abline(lm(w1$duration ~ w1$message), col="red")
# abline(lm(false$duration ~ false$message), col="blue")
dev.off()
