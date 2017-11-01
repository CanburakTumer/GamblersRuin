## @author : Canburak Tümer
## @version : 2017.11.01.01
####
## Gambler's ruin is an statistical problem where Gambler starts with N amount of money in his pocket and he throws a coin,
## if coin lands heads he wins 1$ else he losses 1$. Throwing ends, when Gambler has no more money or he reaches a predefined
## R as fortune. 
####
## In this implementation there are some initial variables, which can be modified before running script:
## p is the probability of tossing tails, works as a threshold.
## n is the initial fortune
## l is the amount for loss condition 
## w is the amount for win condition
####


## This variables can be modified to observe different experiments.
p <- 0.5
n <- 3
l <- 0
w <- 10
## Uncomment the line below to set a static seed for random generator function.
##set.seed(1) 

## BELOW THIS PART IS IMPLEMENTATION OF PROBLEM, CHANGE AT YOUR OWN RISK!
toss <- 0

while(n > l && n < w){
  e <- runif(1,0,1)
  toss <- toss+1
  ## e
  if(e <= p){
    ## loss condition
    n <- n-1
    print(paste("Gambler toss a tails, s/he lost 1$ now Gambler has :",n," || -toss # : ", toss, "  -e value : ",e)) 
  } else {
    n <- n+1
    print(paste("Gambler toss a heads, s/he won 1$ now Gambler has : ",n," || -toss # : ", toss, "  -e value : ",e)) 
  }
}

if(n == 0) {
  print("GAMBLER RUINED!")
} else print("GAMBLER WON THIS TIME!")
## PROGRAM ENDS