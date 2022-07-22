# 변수 만들기
a <- 1
a
b <- 2
b
c <- 3
c
d <- 3.5
d

a+b
a+b+c
4/b
5*b

# 여러 값으로 구성된 변수 만들기
# c() : combine의 머리글자, 합치다를 의미한다.

var1 <- c(1,2,5,7,8)
var1

# x:y : x, y를 포함하는 연속된 숫자 변수 생성
var2 <- c(1:5)
var2

# seq() : sequence, 연속을 의미한다. 연속 값을 지닌 변수 생성
# by 파라미터를 이용해 일정한 간격을 두고 연속 값을 지닌 변수 생성
var3 <- seq(1,5)
var3
var4 <- seq(1,10,by=2)
var4
var5 <- seq(1,10,by=3)
var5

# 여러 값을 지닌 변수도 연산이 가능하다.
var1
var1+2

# 여러 값을 지닌 변수끼리 연산하면 같은 순서에 위치한 값끼리 연산한다.

var1
var2
var1+var2

# 문자로 된 변수 만들기
str1 <- "a"
str1

str2 <- "text"
str2

str3 <- "Hello World!"
str3

# 변수를 여러 개의 숫자로 만들었던 것과 마찬가지로 c() 함수를 이용하면 여러개의 문자로 구성된 변수 생성

str4 <- c('a', 'b', 'c')
str4

str5 <- c('Hello', 'World', 'is', 'good!')
str5 # 가장 긴 단어의 길이를 기준으로 출력 구간을 정하기 때문에 "is" 와 "good!" 사이의 간격이 벌어진다.

# 문자로 된 변수로는 연산할 수 없다. 치후 문자 처리 기능을 가지고 있는 함수를 이용한다.
str1 + 1

# '데이터 분석은 함수를 이용해서 변수를 조작하는 일'이라고 할 수 있다.
# 함수는 숫자를 담는 상자라는 의미이다.

# 숫자를 다루는 함수 이용하기
x <- c(1,2,3)
x

mean(x) # 평균
max(x)  # 최대
min(x)  # 최소

# 03-2 마술상자 같은 '함수' 이해하기
# 문자를 다우는 함수 이용하기
# paste() : 여러 문자를 합쳐 하나로 만드는 함수, collapse를 사용하여 구분자를 지정할 수 있다.
str5
paste(str5, collapse = ',')
paste(str5, collapse = ' ') # 깔끔
str5_paste <- paste(str5, collapse = ' ')
str5_paste

x
x_mean <- mean(x)
x_mean

# 03-3 함수 꾸러미, '패키지' 이해하기
# 패키지란 여러 함수가 들어있는 꾸러미이다.
# R에서 특정 함수를 사용하려면 패키지 설치를 먼저 하여야 한다.

# ggplot2 패키지 설치하기
install.packages("ggplot2")

# ggplot2 패키지 로드
library(ggplot2)

x <- c('a','a','b','c')
x

# 빈도 막대 그래프 출력
qplot(x)

# ggplot2의 mpg 데이터로 그래프 만들기
# data에 mpg, x축에 hwy 변수 지정해 그래프 생성
qplot(data = mpg, x = hwy)

# qplot()의 다양한 파라미터 알아보기

qplot(data = mpg, x = cty)
qplot(data = mpg, x = drv, y = hwy)
qplot(data = mpg, x = drv, y = hwy, geom = 'line') # 선그래프
qplot(data = mpg, x = drv, y = hwy, geom = 'boxplot') # 박스 그래프
qplot(data = mpg, x = drv, y = hwy, geom = 'boxplot', colour = drv) # drv별 색 표현

# qplot()  메뉴얼 출력
?qplot