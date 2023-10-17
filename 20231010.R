rm(list=ls())

### 데이터 입력과 출력 - 화면에서 출력
 ## 화면에 출력
  # print( ) :하나의 값 출력, 출력 후 자동 줄바꿈
  # cat( ) :여러 개의 값 출력, 출력 후 줄바꿈 '\n' 필요

a <- 3

print(a)
a

cat(a)

cat("안녕하세요")
cat("저는") #자동으로 줄 바꾸지 않음

cat("안녕하세요\n")
cat("저는")

a <- 1
b <- 2

cat('a의 값은', a, '입니다', '그리고 b의 값은', b, '입니다')

#데이터 입력
age <- c(28, 17, 35, 46, 23, 67 ,30, 50)
age
print(age) #조건문 반복문에서 씀
cat(age)

#정보 추출
young <- min(age)
young
old <- max(age)
old

#처리 결과 출력
cat('가장 젊은 사람의 나이는', young, '이고',
    '가장 나이든 사람의 나이는', old, '입니다. \n')

 ## 화면에 입력
a <- 10
install.packages('svDialogs') #패키지 설치
library(svDialogs)

user.input <- dlgInput('Input income')$res
user.input
#입력값 무조건 문자로봄 (숫자로 쓸거면 따라서 바꿔줘야 함)
#$ 안 쓰면 모든 정보 나와서 보기 복잡

income <- as.numeric(user.input) #문자열을 숫자로
income

tax <- income * 0.05 #세금 계산
cat('세금: ', tax)

is.numeric(a) #a가 숫자인지
is.character(a) #a가 문자인지

b <- as.numeric(a)
b + 100

as.matrix(b)
as.data.frame(b)

id <- dlgInput('이름을 입력해주세요')$res
id #항상 숫자로 바꿀 필요는 없음

#예시
height <- dlgInput('키 입력(cm)')$res
weight <- dlgInput('몸무게 입력(kg)')$res

height <- as.numeric(height) ###중요###
weight <- as.numeric(weight)

height <- height/100

bmi <- weight/(height^2)
bmi

cat('입력한 키는', height*100, 'cm, 몸무게는', weight, 
    'kg 입니다. \n')


### 데이터 읽기와 쓰기
 ## 파일에 입력/파일에 출력
  # getwd( ) :현재 작업 영역 확인(파일을 저장할 영역 확인)
  # setwd( ) :새로운 작업 영역 지정
  # write.table( ) :파일을 txt 형태로 저장
  # write.csv( ) :파일을 csv 형태로 저장

getwd( )
setwd('C:/Users/minji/Desktop/R프로그래밍')

 ## .csv 파일 읽기
data <- read.csv('airquality.csv') #또는 경로와 함께 입력
View(data)

data <- read.csv('airquality.csv', header = T)
#헤더가 있을 경우 T입력(문자도 data 인식 할 수 있음)
# header = T :파일의 첫 번째 행은 데이터의 값X, 열 이름 의미

head(data) #위에서 부터 6줄
tail(data) #끝에서 부터 6줄
View(head(data))
class(data) #air의 자료구조 확인
 
 ## .csv 파일 쓰기
name <- c('tony', 'alex')
age <- c(30, 20)
data <- data.frame(name, age)
View(data)

write.csv(data, '20220441.csv')
write.csv(data, '20220442.csv', row.names = F)
# row.names = F :저장할 때 행 번호/행 이름은 제외

my.iris <-subset(iris, Species == 'setosa')
View(my.iris)

write.csv(my.iris, 'my.iris2.csv', row.names = F)
View(my.iris)

 ## .xlsx 파일 읽기
install.packages('xlsx')
library(xlsx)

data <- read.xlsx('airquality.xlsx', header = T,
                  sheetIndex = 1)
# sheetIndex = 1 :엑셀 파일의 첫 번째 시트를 읽으라는 의미
# encoding = 'UTF-8' : 파일에 한글이 있을 경우 입력

View(data)

 ## .xlsx 파일 쓰기
write.xlxs(data, 'minji.xlsx', row.names = F)

 ## .txt 파일 읽기
a <- read.table('read_tab.txt') #파일 안 읽힘
a <- read.table('read_tab.txt', fileEncoding = "CP949",
                header = T, sep = '\t', encoding = 'UTF-8')
# sep = '\t' :tab 인식
View(a) #header 가 가장 중요

b <- read.delim('read_tab.txt', fileEncoding = "CP949",
                header = T, sep = '\t', encoding = 'UTF-8')
#delim은 tab을 자동 인식 하기 때문에 sep = '\t' 입력 안해도
View(b)

 ## .txt 파일 쓰기
  # write.table( ) 의 매개변수
  # append = T/F :T기존 파일 뒤에 내용 추가, F덮어쓰기
  # quote = T/F :T데이터 값에 쌍따옴표 표시, F표시 X
  # eol = '?' :행과 행을 어떻게 구분할지 입력

data
write.table(data, 'yyy.txt', quote = F)

View(airquality)
a <- subset(airquality, Temp >= 90)
View(a)
write.table(a, 'yyy.txt', quote = F )
#데이터 덮어쓰기 됨

write.table(a,'yyy.txt', append = T, quote = F)
#데이터 덮지 않고 아래로 추가함

write.table(a,'yyy.txt', append = T, quote = F, eol = '-')
#행으로 정렬하지 않고 한줄로 작성됨

write.table(a,'yyy.txt', append = F, quote = F, row.names = F)


# sink 사이에 출력값이 txt 파일에 작성됨
sink('alex.txt', append = F)
print("hello")
print("20231010")
sink()

sink('alex.txt', append = T) #덮어쓰기 X
print("화요일")
sink()

### 예시 1 : txt파일 쓰기 ###

getwd()
View(airquality)
air_6 <- subset(airquality, Month == 6)
View(air_6)
write.table(air_6, 'air_6.txt', quote = F, row.names = F)
#옵션 주의

### 예시 2 : csv파일 쓰기 ###
View(swiss)
swiss_F <- subset(swiss, Fertility >= 90)
View(swiss_F)
write.csv(swiss_F, 'swiss_F.csv')

### 예시 3 : 데이터 읽기 ###
swd_F <- read.csv('swiss_F.csv', header = T)
swd_F

### 예시 4 : swd_F 데이터 분석 ###
View(swd_F)
colSums(swd_F$Education) #에러남
colSums(swd_F['Education'])
sum(swd_F[,'Education'])
sum(swd_F$Education)

mean(swd_F[, 'Examination'])
mean(swd_F$Examination)

sort(swd_F[, 'Agriculture'])
sort(swd_F$Agriculture)

### 예시 5 : swd_F 데이터 분석 ###
swd_F1 <- subset(swd_F, Infant.Mortality >= 20)
View(swd_F1)
nrow(swd_F1)


### 예시 6 : txt 파일 쓰기 ###
num <- c(1, 2, 3, 4, 5)
type <- c('vector', 'list', 'factor', 'matrix',
          'data.frame')
dt <- data.frame(num, type)

View(dt)

write.table(dt, 'data_type.txt', quote = F, eol = '*')

### 예시 7 : 파일로 출력하기 ###
cat('데이터 ₩n')
