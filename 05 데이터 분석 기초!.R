# 05 데이터 분석 기초!
# 데이터 파악하기, 다루기 쉽게 수정하기

# 05-1 데이터 파악하기
# 데이터가 주어졌을 때 가장 먼저 하는 일은 데이터의 전반적인 구조를 파악하는 것
# 변수, 행, 열 등을 파악하며 데이터의 특징에 대한 감을 잡는다.

# 데이터를 파악할 때 사용하는 함수들
# head() : 데이터 앞부분 출력
# tail() : 데이터 뒷부분 출력
# View() : 뷰어 창에서 데이터 확인
# dim() : 데이터 차원 출력
# str() : 데이터 속성 출력
# summary() : 요약 통계량 출력

exam <- read.csv('./Data/csv_exam.csv')
head(exam) # 앞에서부터 6행 출력
head(exam, 10) # 앞에서부터 10행 출력

tail(exam) # 뒤에서부터 6행 출력
tail(exam, 10) # 뒤에서부터 10행 출력

View(exam) # 데이터 뷰어 창에서 exam 데이터 확인

dim(exam) # 행, 열 출력

str(exam) # 데이터 속성 확인

# 요약 통계량 출력
summary(exam)

# min : 최소값
# 1st Qu : 1사분위수(하위 25% 지점에 위치하는 값)
# median : 중앙값
# mean : 평균
# 3rd Qu : 3사분위수(하위 75% 지점에 위치하는 값)
# max : 최대값

#id            class        math          english        science     
#Min.   : 1.00   Min.   :1   Min.   :20.00   Min.   :56.0   Min.   :12.00  
#1st Qu.: 5.75   1st Qu.:2   1st Qu.:45.75   1st Qu.:78.0   1st Qu.:45.00  
#Median :10.50   Median :3   Median :54.00   Median :86.5   Median :62.50  
#Mean   :10.50   Mean   :3   Mean   :57.45   Mean   :84.9   Mean   :59.45  
#3rd Qu.:15.25   3rd Qu.:4   3rd Qu.:75.75   3rd Qu.:98.0   3rd Qu.:78.00  
#Max.   :20.00   Max.   :5   Max.   :90.00   Max.   :98.0   Max.   :98.00  


# mpg 데이터(ggplot2 패키지에 내장된 데이터) 파악하기
mpg <- ggplot2::mpg
?mpg # mpg 설명 글 출력

head(mpg)
tail(mpg)
View(mpg)
dim(mpg)
str(mpg)
summary(mpg)

# 05-2 변수명 바꾸기