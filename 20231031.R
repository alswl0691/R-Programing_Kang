rm(list=ls())

### 함수 ###
 ## apply( ) 함수

a = matrix(1:12,3)
a
apply(a, 1, sum) #행방향으로 더하기
apply(a, 1, mean) #행방향으로 평균 구하기
apply(a, 2, max)

apply(iris[ ,1:4],1,mean)
apply(iris[ ,1:4],2,mean)

b = matrix(1:20,4,5)
apply(b,1,mean)
b


 ## funtion ( ) 함수

yaksu = function(a){
  for(i in 1:a){
    if(a%%i==0){
      cat(i, end='')
    }
  }
}
yaksu(24)
yaksu(100)
yaksu(30)


minji = function(x,y=0){
  result = x+y
  return(result)
}
minji(2,4)
minji(5) #error but, y=0이라고 초깃값 설정 시 에러안뜸


minji2 = function(a,b,c){
  cat(a,b,c)
}
minji2(3,4,5)


mymax = function(p,q){
  ma = p
  if(p>q){
    ma = 1
  }
  return(ma)
}
mymax(1,10)


myfunc = function(a,b){
  m_sum = a+b
  m_mul = a*b
  
  return(list(sum=m_sum,mul=m_mul)) #list 이름 적어주는게 좋음
}
#return여러개 하고 싶으면 list 사용 필수
myfunc(3,4)[[1]] #첫번째 값 출력
a = myfunc(3,4)
a$mul
a$sum



