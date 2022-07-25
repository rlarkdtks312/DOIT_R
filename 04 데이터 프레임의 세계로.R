# 04-1 데이터 이해하기
# 데이터 프레임은 가장 많이 사용하는 데이터 형태로, 행과 열로 구성된 사각형 모양의 표이다.
# 열은 속성이다.
# 행은 한 객체의 정보이다.
# 데이터가 크다 = 행이 많다 or 열이 많다
# 데이터를 분석하는 입장에서는 열이 많은 것이 중요하다.
# 분석하는 방법의 난이도가 달라질 수 있다.
# 데이터 분석의 가치는 어떤 현상이 조건에 따라 달라진다는 사실을 발견할때 생긴다.
# 예를 들어 특정 날씨의 어떤 음식등

# 04-2 데이터 프레임 만들기 - 시험 성적 데이터를 만들어 보자!
# 데이터 입력해 데이터 프레임 만들기

english <- c(90,80,60,70)
english
math <- c(50,60,100,20)
math

# english, math로 데이터 프레임 생성 해서 df_midterm에 할당
df_midterm <- data.frame(english, math)
df_midterm

# 반에 대한 정보 추가하기

class <- c(1,1,2,2)
class

# 분석하기
mean(df_midterm$english) # df_minterm의 english로 평균 산출
mean(df_midterm$math)

# 04-3 외부 데이터 이용하기 - 축적된 시험 성적 데이터를 불러오자

# 엑셀 파일 불러오기
install.packages("readxl")
library(readxl)

# 엑셀 파일 불러오기
df_exam <- read_excel('./Data/excel_exam.xlsx')
df_exam

#분석하기 / 영어, 과학 평균 구하기
mean(df_exam$english)
mean(df_exam$science)

# 엑셀 파일 첫 번째 행이 변수명이 아니라면?
# read_excel()은 기본적으로 첫 번째 행을 변수명으로 인식한다.
# 따라서 첫 번째 행의 데이터가 변수명으로 지정되면서 유실된다.
# col_names = F 인자를 사용하여 위 문제를 해결할 수 있다. F는 대문자!
df_exam_novar <- read_excel('./Data/excel_exam_novar.xlsx')
df_exam_novar

df_exam_novar <- read_excel('./Data/excel_exam_novar.xlsx', col_names = F)
df_exam_novar

# 엑셀 파일에 시트가 여러개 있다면?
# sheet 파라미터를 이용해 몇 번째 시트의 데이터를 불러올지 지정할 수 있다.
df_exam_sheet <- read_excel('./Data/excel_exam_sheet.xlsx', sheet = 3)
df_exam_sheet

# csv 파일 불러오기기
df_csv_exam <- read.csv('./Data/csv_exam.csv')
df_csv_exam

# 문자가 포함된 파일을 불러올때는 stringAsFactors = F 파라미터를 사용하여야
# 오류가 발생하지 않는다.
df_csv_exam <- read.csv('./Data/csv_exam.csv', stringsAsFactors = F)
df_csv_exam

# 데이터 프레임을 csv 파일로 저장하기
# 데이터 프레임 만들기
df_midterm <- data.frame(english = c(90, 80, 60, 70),
                         math = c(50,60,100,20),
                         class = c(1,1,2,2))
df_midterm

# csv 파일로 저장하기
write.csv(df_midterm, file = './Data/df_midterm.csv')

# RData 파일 활용하기
# RData(.rda, .rdata)는 R 전용 데이터 파일이다.
# 읽고 쓰는 속도가 빠르고 용량이 적다는 장점이 있다.

# 데이터 프레임을 RData 파일로 저장하기
save(df_midterm, file = './Data/df_midterm.rda')

# RData 파일 불러오기
# 불러오기전 df_midterm 삭제
rm(df_midterm)
df_midterm # Error: object 'df_midterm' not found : 에러 발생
load('./Data/df_midterm.rda')
df_midterm

# read.csv() , read_excel()은 파일을 불러와 새변수에 할당해야 활용가능하다.
# load()로 rda 파일을 불러오면 저장할 댸 사용한데이터 프레임이
# 자동으로 만들어지기 때문에 새 변수에 할당하지 않습니다.