##다중변수 데이터
#데이터 확인
head(cars)

plot(cars$speed, cars$dist,
     main = '자동차 속도와 제동거리',
     xlab = '속도',
     ylab = '제동거리')

cor(cars$speed, cars$dist)  #상관관계

class(state.x77)
st <- data.frame(state.x77)
class(st)
head(st)

plot(st)
cor(st$Life.Exp, st$Murder)
cor(st$Illiteracy, st$Murder)

##
str(longley)

df <- longley[,c('GNP', 'Unemployed','Armed.Forces',
      'Population','Employed')]
df

plot(df)
cor(df)

getwd()
#R데이터로 데이터셋 불러오기
load('./result_sales_dt.RData')
#RData 저장
save(result_sales_dt, file='./result_dt.RData')

#실전분석
install.packages('Ecdat')
library(Ecdat)

str(Hdma)

tbl <- table(Hdma$deny)
tbl
tbl2 <- tbl / sum(tbl)
tbl2

names(tbl <- c('승인','거절'))
tbl
names(tbl2 <- c('승인','거절'))
tbl2



barplot(tbl2, main='주택담보대출 승인/거절 건수수',
        col=c('green','red'),
        ylim = c(0, 2500),las =1,
        ylab = '건수')

hist(Hdma$Ivr, main = 'LTV', col = rainbow(3),
     ylim = c(0,1200))

#dir 수입대비 보증금비율, hir수입대비 주택유지비용
df<- Hdma[,c('dir','hir','ccs','mcs')]
df
point.color <- c('green','red')
plot(df, col = point.color[Hdma$deny])
cor(df)
