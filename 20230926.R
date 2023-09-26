rm(list=ls())
## review
a <- matrix(c(7, 5, 11, 6, 3, 9),2)
a <- matrix(c(7, 11, 3, 5, 6, 9),2,3,T)

a <- rbind(c(7,11,3), c(5,6,9))
a <- cbind(c(7,5), c(11,6), c(3,9))

## 모두 같은 matrix 생성

a
View(a)
a[[2,3]] ## matrix 출력

colnames(a) <- c('a', 'b', 'c') ## matrix 열에 이름 삽입
a[[2, 'c']] ## 특정 matrix 출력

rownames(a) <- c('Tony', 'Jane') ## matrix 행에 이름 삽입

a[['Jane','c']] ## 특정 matrix 출력

## DATA FRAME ##

a <- data.frame(c('Seoul','Tokyo','Washington'),c(1,3,2))
## 이렇게 만들면 이름 지저분함
View(a)

city <- c('Seoul','Tokyo','Washington')
rank <- c(1,3,2)
a <- data.frame(city, rank)
View(a)

b <- data.frame(city=c('Seoul','Tokyo','Washington'), rank=c(1,3,2))
View(b)
## 두 가지 방법으로 할 수 있음 (표 이름 깔끔)

str(b) ## data frame 정보 알려줌

b[ ,1] ## 앞에를 비워두면 모두 출력
b[ , 'city']
b$city ## $를 치면 열 이름 알려줌
## (위 세가지 경우 모두 같은 것을 출력)

class(a) ## matrix
class(b) ## data frame

c <- as.data.frame(a)
c <- data.frame(a)
## matrix가 data frame으로 바뀜
class(c)

d <- as.matrix(b)
class(d)
## data frame이 matrix로 바뀜

## ds$ 어쩌고 저쩌고 하면 덮어쓰기 가능 또는 옆에 새롭게 붙일 수 있음


View(iris) ## 숫자 문자 같이 있기 때문에 data frame
class(iris)
str(iris)

iris[ ,c(1:2)] ##모든 행 다 출력
a <- iris[ ,c(1:2)] ## 깔끔하게 전체적으로 보고 싶을 때
View(a)

iris[ , c("Sepal.Length","Species")]
b <- iris[ , c("Sepal.Length","Species")]
View(b)

iris[ 17 , c("Petal.Width")]

View(iris[c(1,3),c(2,4)]) # 특정 부분 출력

a <- matrix(c(7, 5, 11, 6, 3, 9),2)
dim(a) ## 데이터셋의 행과 열의 개수 출력
dim(a)[1] ## 하나만 출력 하고 싶을 때

nrow(a) ##
ncol(a)

rm(list=ls())

View(iris)
a <- head(iris) ## 위에 6줄 보여줌
View(a)

b <- tail(iris) ## 아래 6줄 보여줌
View(b)

unique(iris[ , 5]) ## 종류가 뭔지 보여줌
table(iris[ , 5]) ## 각각 몇개가 있는지 보여줌
## 5 또는 Species 입력 가능

a <- matrix(c(7, 5, 11, 6, 3, 9),2)
colSums(a) ## 열 모두 더함 
rowSums(a) ## 행 모두 더함
## 문자열 섞여 있을 경우 오류남

colSums(iris[ , -5]) ## 문자열(5열) 빼서 숫자만 더할 수 있음
rowSums(iris[ , -5])

## t( )는 2x3 matrix가 3x2로 바뀜 ex. (1,2) > (2,1) 각각 바꾸기


## 데이터 셋에 조건 걸기
View(a)
a <- matrix(c(7, 5, 11, 6, 3, 9),2)
a <- rbind(a, c(0, 5, 6))
colnames(a) <- c('x', 'y', 'z')
b <- subset(a, y > 5) ## matrix에선 subset 오류남
b <- subset(a, a[ , 2] > 5) ## 이렇게 할 시 오류 안남
View(b)

x <- subset(iris, Sepal.Length > 5 & Sepal.Width > 4) 
## 문자열에 따옴표 치면 틀림
View(x)

## matrix에서 데이터 프레임처럼 subset 사용하고 싶은 경우
## b <- subset(as.data.frame(a), z<10) 이렇게 바꿔줘야함

is.matrix(a) ## 이게 매트릭스 인가요??
is.data.frame(a) ## a가 데이터 프래임 인가요??

## 부분적으로 matrix 바꾸기 가능
iris.m <- as.matrix(iris[1:4]) ## 또는 iris[ , -5]
iris.m

## 예시 풀어보기 ##
# 예시 1
d <- matrix(seq(5,60,5) , 3) ## 3또는 3,4
d
# 예시 2
d_t <- matrix(seq(5,60,5), 3, 4, TRUE)
d_t
# 예시 3

# 예시 4
View(state.x77)
rich_state.x77 <- subset(as.data.frame(state.x77), Income >=5000)
View(rich_state.x77)
# 예시 5
x <- c(1,2,3)
y <- c('white', 'blue', 'yellow')
z <- c(TRUE, FALSE, TRUE)
df <- data.frame(x,y,z)
View(df)
# 예시 6
View(airquality)
class(airquality)
airquality_m <- as.matrix(airquality)
#예시 7
x <- subset(airquality, Ozone > 120)
nrow(x)
nrow(subset(airquality, Ozone > 120))
subset(airquality, Temp == max(airquality[ , 'Temp']))
airquality[   , 'Wind'] ## 열을 출력하는 두가지 방법
airquality$Wind ## 달러는 데이터 프레임에서 먹힘
