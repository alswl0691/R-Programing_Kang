rm(list=ls())

3+8
4*5
(90+80+35)/3

9/2
9%%2

3^4
3**4

log10(10)
factorial(3)

sample(10)
1:100
3/5

sin(pi/2)

sample(1:100, 5)

sample(1:45, 5)

x=3
y=2

x+y

x <- 7
y <- 5
c <- x+y
print(c)

c

z<-4
z<-"hello"
z+3
a <- 'hi'

x <- 10
mid_score <- 90
final_score <- 80
avg_score <- (mid_score+final_score)/2

score <- 1
Score <- 2
sCore <- 3

final_score <- 100


rm(list=ls())

name <- "minji"

x <- 100
a <- TRUE
b <-10

class(b
class(a)
c <- T
class(c)

is.numeric(b)
is.character(a)

a <- c(1,2,3,4,5,6,7,10,100)
a
print(a)

a <- c("hello",2,3,4,5,6,7,10,100)
b <- c(T,F,T,F,T,F,T,F,F)

a <- c(1,2,3,4,5,6,7,8,9,10)
b <- c("a","b")
c <- c(a,b)
c

d <- 1:100
d <- c(1:100)

y <- c(1,2,3,90:100)

a <- seq(from=0,to=100,by=2)
a
b <- seq(0,100,2)
?seq

b <- seq(0,100,5)
b

c <- seq(0,100,length.out=4)
c

rm(list=ls())


name <- c("minji", "tom","jane")
a <- rep(name,each=10,length.out=50)
a
?rep

b <- rep(c(1,5),c(3,2))
b

score <- c(100,90,80)
names(score) <- c("minji","tom","jane")
score

score[2]

score[c(1,3)]

score["tom"]

score <- c("minji"=100, "tom"=90, "jane"=80)
score

x <- c(100,80,90)
names(x) <- c("minji","tom","jane")
x

d <- seq(1,9,2)
d
d[c(1,3,5)]
d[2:4]
d[-1]

d[-c(1,3,5)]

rm(list=ls())

b <- c(1,2,3,4,5)
b
b[3] <- 0
b
b[c(1,5)] <- c(100,99)
b

a <- seq(1,9,2)
a
b <- 2*a
b

x <- c(9,4,100,0,88,24)
x
sum(x)
mean(x)
median(x)
sort(x)

?sort
sort(x,decreasing=T)

sort(x,TRUE)
sort(x,FALSE)
sort(x)

a <- 10
b <- a>5
c <- 10

a==c
a!= c

b <- 1
## | or & and*****
(a > b) | (a==b)
(a > b) & (a!=b)

d <- seq(1,9,2)
d
d>=5
d>=5

d[   d>=5   ]

## d[F,F,T,T,T,T,]

d>5


sum(d>5)

sum(d[d>5])

condi <- d > 1 & d < 5
condi
d
sum(condi)
d[condi]

