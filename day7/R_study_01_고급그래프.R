##고급 그래프
#treemap
install.packages('treemap')
library(treemap)

data(GNI2014)
str(GNI2014)
GNI2014$contry
head(GNI2014)

treemap(GNI2014, index=c('continent', 'iso3'),
        vSize = 'population', vColor ='GNI',
        title = '대륙간 인구수/GNI',
        type = 'value')
