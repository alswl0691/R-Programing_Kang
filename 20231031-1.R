
source('20231031.R')

a = c(3,2,9,5,10,7,8)
which(a>4) #몇 번째 인지만
a[which(a>4)] #조건에 맞는 값 출력

sum(a[which(a>4)])

which.max(a) #가장 큰 숫자가 몇 번째에 있는지
a[which.max(a)]

score = c(76, 84, 69, 50, 95, 60, 82, 71, 88, 84)
idx = which(score<=60)
idx

score[idx]
score[idx]=65 #값 변경
score

idx = which(iris$Sepal.Length>5.0)
idx #조건에 맞는 행 번호 전부 출력

iris.big = iris[idx, ]
View(iris.big)

### 예시 ###
#1
View(mtcars)
apply(mtcars, 2, sum)
apply(mtcars, 1, mean)
apply(mtcars, 2, max)

#2
tri = function(a,b){
  z = -1
  z = (a^2+b^2)^0.5
  return(z)
}
tri(3,4)

#3
lgm = function(a,b){
  res = 0
  for(i in min(a,b)){
    if(a%%i==0 & b%%i==0){
      res = i
    }
  }
  return(res)
}
lgm(10,30)
lgm(2,8)

#4
v1 = c(2,6,23,8,8,6)
maxmin = function(x){
  ma = max(x)
  mi = min(x)
  return(list('max'=ma,'min'=mi))
}
result = maxmin(v1)
result$max
result$min

#5
weight = c(69, 50, 55, 71, 89, 64, 59, 70, 71, 80)
which.max(weight)
which.min(weight)
which(weight>=61 & weight<=69)
w = which(weight<=60)
w
weight2 = weight[w]
weight2

#6
iris_ma = which.max(iris$Petal.Length)
iris_ma
iris_ma = iris[iris_ma, ]
iris_ma
iris_ma = iris[iris_ma,4]
