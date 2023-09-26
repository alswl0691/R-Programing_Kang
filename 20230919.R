rm(list=ls())

a <- c(1, 3, 5)
length(a)

b <- 30:90
b[61]
length(b)


a <- list(1, "a", T)
a[3]
a[[3]]
a[[2]]
a[[1]]
a

b <- c(90,80,100)
b 
names(b) <- c("math", "english", "korean")
b
b[2]
b['english']

a
names(a) <- c("j", "k", "l")
a
a[[2]]
a$j
a$k

a <- list(j=1, k="a", l=T)
a
y <- list("datascience", "taewan", 40)
y
names(y) <- c("major", "name", "age")
y
y$age
z <- list("major"="datascience", "name"="taewan", "age"=40)
z
z$name


b
x <- list(name="taewan", score=b)
x

x <- c("A", "B", "A", "AB", "O", "O")
y <- factor(x)
y
y[4]
y[2]
y[6]
y[7] <- "B"
y[8] <- "C"
y
summary(y)
levels(y)


rm(list=ls())

d<- c(100:200)
d
d[51]
d[50]
?seq
d <- seq(100,200,10)
d
d <- seq(100,119)
d

d <- seq(1,101,10)
d

length(d)
mean(d)

sum(d < 110)

sum(d[d<110])

x <- c(1:20)
x
y <- x[seq(3,18,3)]
y
sort(y)
sort(y, T)
sort(y, decreasing=T)

sort(y)

mean(x[-(2:10)])
mean(x[5:15])

a <- c(1,6,3,8)
a
sort(a)
names(a) <- c("one", "three", "six", "eight")
a

a <- sort(a)
a

ages <- c(58, 20, 85)
names <- c("Tony", "Ahn", "Nick")
ages

x <- list(ages, names)
x

names(x) <- c("numbers", "names")
x

x <- c(1,6,8,11)
x

z <- list("x*2"=2,12,16,22, "x/2"=0.5,3.0,4.0,5.5)
z

z <- list(2*x, x/2)
z
names(z) <- c("x*2", "x/2")
z
z <- list("x*2"=2*x, "x/2"=x/2)
z

gender <- c(rep('male',5), rep('female',10))
gender

gender_fac <- factor(gender)
gender_fac


rm(list=ls())


?state.x77
View(state.x77)
View(iris)


x <- matrix (1:20 , nrow = 4 , ncol = 5)
View(x)
x[4,5]

y <- matrix(data=1:20, nrow = 4, ncol = 5)
?matrix
z <- matrix(1:18,3)
View(z)

z <- matrix(1:18, ncol=3, byrow=T)


a <- matrix(1:20, 2, byrow=T)
View(a)

b <- matrix(1:18, ncol=3, byrow=T)
View(b)

c <- matrix(0,3,4)
View(c)

c

d <- matrix("taewan",2,1)
d

x <- matrix(c(1,2,3,4,5,6,7,8,9,10,11,12), 3, 4)

a <- matrix(1:20, 4, 5)

nrow(a)
dim(a)
dim(a)[1]

ncol(a)
dim(a)[2]

length(a)

x <- 1:3
y <- 4:6
z <- cbind(x,y)
z <- rbind(x,y)

rm(list=ls())

cbind(1:3, 4:6, matrix(7:12,3,2))
rbind(matrix(1:6,2,3),matrix(7:12,2,3))

x <- matrix(1:20,4, byrow=T)
x[3,4]
x[3,]

x[ ,5]
x[ , ]
x
x[2,]
x[c(1,3),]

colnames(x) <- c("z", "y", "a", "b", "c")
x[ , "몸무게"]
rownames(x) <- c("kim", "hong", "kang", "lee")
x["hong", ]
x

rownames(x)
colnames(x)
x
x["kim", "b"]
