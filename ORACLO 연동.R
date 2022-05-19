##Oracle연결 
#한글 해결 = DBMSencoding = 'euc-kr' not 'utf-8'
#RJAVA, RJDBC, rOracle
#1.RODBC패키지 설치
install.packages('RODBC')
                 
#Java DB Connectity
#2.Library 연결
library(RODBC)

#ODBC 데이터원본(64비트) 설정
conn1 = odbcConnect('SCOTT_dsn', uid = 'scott', pwd = 'tiger',
                    DBMSencoding = 'euc-kr',
                    believeNRows = F)

res<- sqlQuery(conn1, 'SELECT *FROm dept')
str(res)

sqlQuery(conn1, 'SELECT *FROm MEMBERTBL')

sqlQuery(conn1, 'SELECT *FROm emp')

queryClose()
