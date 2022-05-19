#샘플링
x <- 1:100
x
y <- sample(x, size = 5, replace = F)
y

idx <-sampl(1:nrow(iris), size = 15, replace =F)
idx

iris.15 <- iris[idx,]
iris.15

#set.seed()
sample(1:20, size=5)
sample(1:20, size=5)
sample(1:20, size=5)
set.seed(100)           #sample을 도출해내고 다음 sample시 set.seed값과 동일한 값을 도출해낸다.
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)
sample(1:20, size=5)

combn(1:5, 3)                           ###combn파트 공부하기기
combn(1:10, 9)

x <- c('red', 'green','blue','black','white')
com <- combn(x,2)
com


#####
str(KosteckiDillon)

tot.mean <-mean(KosteckiDillon$dos)
tot.mean
summary(KosteckiDillon$dos)

set.seed(100)
sample(nrow(KosteckiDillon), nrow(KosteckiDillon)*0.2)

for (rt in (1:5)*0.1) {
  set.seed(100)
  idx <- sample(nrow(KosteckiDillon), nrow(KosteckiDillon)*rt)
  sam.data <- KosteckiDillon[idx,'dos']
  tmp.mean <- mean(sam.data)
  cat('비교:',rt*100, '%샘플링','tot.mean-tmp.mean','\n')
  }

