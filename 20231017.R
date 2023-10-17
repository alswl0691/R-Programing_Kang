rm(list=ls())

### 조건문, 반복문
 ## 조건문: 만약 ~ 라면
  # if - else문
  # if(비교조건){
      조건이 참일 때 실행할 명령문(들)
  # }else{
      조건이 거짓일 때 실행할 명령문(들)
  # }

a <- 10

if(a > 5){
  print(a) #중괄호 안에 print를 써줘야 함
  print('hi')
}

if(a > 5){
  a 
  a+1
}   #print 사용안할 시 마지막만 출력함

if(a > 5){
  cat(a, 'hi') #cat은 자동 줄 바꿈 안됨
  print(a+1)
}

if(a > 5){
  cat(a, 'hi\n') #줄바꿈(2개이상 출력하고 싶을 때))
  print(a+1)
}

a <- 1
if(a > 5){
  print(a+1)
}else{
  print(a)
} #a가 5보다 클경우 출력 아니면, a 출력

score <- 88
if(score >= 90){
  grade <- 'A'
} else if(score >= 80){
  grade <- 'B'
} else if(score >= 70){
  grade <- 'C'
} else {
  grade <- 'F'
} #위에서 부터 내려오며 조건 만족할 경우 출력
grade

if(score >= 60){
  grade <- 'C'
} else if(score >= 70){
  grade <- 'B'
} else if(score >= 90){
  grade <- 'A'
}
grade #잘못된 예시

a <- 10
if(a > 8){
  print(a)
} else {
  print('hi')
}

if(a > 8){
  print(a)
}
if(a <= 8){
  print('hi')
} #else 없이도 가능 but, 비효율적

a <- 10
b <- 20
if (a > 5 & b > 5){
  print(a+b)
}
if (a > 5 | b > 5){
  print(a+b)
}

a <- 10
b <- 20
if(a > b){
  c <- a
}else{
  c <- b
}
c
   # ifelse문 :조건에 따라 두 값 중 하나를 선택하는 경우 더욱 편리
   # if(비교조건, 조건이 참일 때 선택할 값, 조건이 거짓일 때 선택할 값)
c <- ifelse(a > b, a, b) #위 식과 같음
c

  ## 반복문
   # for 문, while 문
   # for문: 정해진 반복 횟수만큼 실행
   # while문: 특정 조건이 만족되는 동안 실행, 조건이 거짓일 경우 반복 종료)

for(i in 1:10){
  print(i) #i가 자동으로 하나씩 올라가서 반복
}

a <- c(3, -1, 5)
for(x in a){  #a안에 하나씩 줘봐 그리고 반복해
  print(x)
}

a <- c(3, -1, 5)
for(x in a){  
  cat(x, '\n')
}

a <- c(3, -1, 5)
for(x in a){  
  print('p')
}

for(i in 3:5){
  print('x')
  print(i)
}

for(i in 1:9) {
  cat('2*', i, '=', 2*i, '\n') 
} #print 함수론 출력 불가(2개이상)

for (i in 1:10){
  if(i %% 2 == 0){
    print(i)
  }
} #짝수만 출력

for (i in 1:10){
  if(i %% 2 == 1){
    print(i)
  }
} #홀수만 출력

for (i in 1:10){
  if(i %% 2 == 1){
    cat(i, '')
  }
} #일자로 출력하면서 띄어쓰기 해줌

sum <- 0 #sum이라는 변수 생성 후 초깃값 설정
for(i in 1:100){
  sum <- sum + i #sum에 i값을 누적
}
sum
#초깃값 0이아닌 1을 넣을 경우 불상사

View(iris)
N <- nrow(iris) #행이 몇개 있나
mylabel <- c() #빈 벡터 생성

for(i in 1:N){
  if(iris$Petal.Length[i] <= 1.6){
    mylabel[i] <- 'L'
  }else if(iris$Petal.Length[i] >= 5.1){
    mylabel[i] <- 'H'
  }else{
    mylabel[i] <- 'M'
  }
}

print(mylabel)
length(mylabel)

a <- data.frame(iris$Petal.Length, mylabel)
View(a)


for(i in 1:5){
  print(i)
}

i <- 1 #1부터 시작임 (초깃값 설정)
while(i <= 5){
  print(i)
  i <- i+1 #i는 하나씩 증가 시키자 (수동으로써줘야함)
} #위 for문을 while문으로 바꿔준 것


sum <- 0
for(i in 1:10){
  sum <- sum + i
}
sum

sum <- 0
i <- 1
while(i <= 10){
  sum <- sum + i
  i <- i +1
}
sum 

sum <- 0
i <- 1
while(i <= 10){
  i <- i +1 #순서가 매우 중요 위와 결과값이 다름
  sum <- sum + i
}
sum 

   # break :반복문 끝냄
for(i in 3:9){
  print(i)
  break
}

for(i in 3:9){
  print(i)
  if(i>6){
  break
  }
}

for(i in 1:10){
  if(i%%2 == 0){
    print(i)
  }
}

    #next :다시 반복하러 올라감(아래 조건 무시)
for(i in 1:10){
  if(i%%2 == 1){
    next
  }
  print(i)
}

i <- 1
while(i <= 10){
  if(i%%2 ==1){
    next
  }
  print(i)
  i <- i+1
} #next 때문에 무한 반복문 생성

i <- 1
while(i <= 10){
  if(i%%2 ==1){
    i <- i+1
    next #홀수면 여기에서 바로 올라감
  }
  print(i)
  i <- i+1
} #next 아래에 i<- i+1 넣어줄 경우 무한반복문 생성
  #next 함수 때문


### 예시 1 ### 배수
for(i in 1:100){
  if(i%%3 == 0){
    print(i)
  }
}

### 예시 2 ### 약수 
for(i in 2:24){
  if(24%%i == 0){
    print(i)
  }
}
 # 24와 30의 공약수
for(i in 2:24){
  if(24%%i == 0 & 30%%i == 0){
    print(i)
  }
}

### 예시 3 ###
num <- 0
sum <- 0
for(i in 1:100){
  if(i%%3 == 0){
    num <- num+1
    sum <- sum+i
  }
}

cat(num, sum, ' ')

### 예시 4 ###
 #곱하기 할 땐 1초깃값 부여

mul <- 1
for (i in 1:5){
  mul <- mul*i
}

i <- 1
k <- 1
while(i <= 5){
  k <- k*i
  i <- i+1
}
k

### 예시 5 ###
for(i in 1:9){
  cat(i, '*7', '=', i*7, '\n')
}

i <- 1
while(i<=9){
  cat(i, '*7', '=', i*7, '\n')
  i <- i+1
}

### 예시 6 ###
for(i in 1:100){
  if(i%%4 == 0){
    print('*'){
    }else{
      print(i)
  }
}

i <- 1
while (i <= 100){
  if(i%%4 == 0){
    print('*')
    }else{
      print(i)
    }
    i <- i+1
}

### 예시 7 ###
n <- nrow(airquality)
m <- 0
for(i in 1:n){
  if(airquality$Temp[i] >= 90){
  cat(airquality$Month[i],
      airquality$Day[i], '\n')
    m <- m+1
  }
}

print(m)
