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
