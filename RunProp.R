#Toss a coin 500 times 
N=1000
#Generate a random Sample of N flipsfor  afair coin
flipseq <-sample(x=c(1,0),prob = c(.5,.5),N,replace = T) 
r <- cumsum(flipseq)
n <- 1:N
runProp <- r/n
plot(n,runProp,type = 'o',log = 'x',xlim = c(1,N),
     ylim = c(0.0,1.0),cex.axis=1.2# 
     ,xlab="Flip Nos",ylab = "Running Proportion",
     cex.lab=1.5)
lines(c(1,N),c(0.5,0.5),
      lty=1)

flipLetters <- paste(c('H','T')[flipseq[1:10]+1],collapse="")
displayString <- paste("flipSeq=",flipLetters,"...",sep = " " )
