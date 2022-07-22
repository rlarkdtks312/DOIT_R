## 3장 혼자서 해보기기
#Q1. 시험 점수 변수 만들고 출력하기

scores <- c(80, 60, 70, 50, 90)

#Q2. 전체 평균 구하기

mean(scores)

#Q3. 전체 평균 변수 만들고 출력하기
sc_mean <- mean(scores)
print(sc_mean)

## 4-2 혼자서 해보기
#Q1 데이터 프레임 만들어 출력하기
products <- c('사과', '딸기', '수박')
price <- c(1800, 1500, 3000)
salses <- c(24, 38, 13)

df_fruit <- data.frame(products, price, salses)
df_fruit

#Q2 가격, 판매량 평균 구하기
mean(df_fruit$price)
mean(df_fruit$salses)