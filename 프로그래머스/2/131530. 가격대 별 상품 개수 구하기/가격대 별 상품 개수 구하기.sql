-- sql 실행순서는 from - where- groub by - select - order by 
-- group by 시점에서는 price_group을 모르니까 그대로 그루핑
-- select 시점에서는 알아도 group by에서 명명을 안해줘서 다시 정의
-- SQL 문법에서 AS는 오직 SELECT, WITH, FROM절의 서브쿼리에서만 허용
-- GROUP BY (PRICE DIV 10000)*10000 AS PRICE_GROUP  틀린 문법, group by에서는 alias 정의 못합
-- from절에 있는 alias는 groupby가 from절에 정의된 alias 사용 가능 , select에서 정의한건 안됨!!

SELECT (PRICE DIV 10000)*10000 AS PRICE_GROUP,COUNT(PRODUCT_ID) AS PRODUCTS
FROM PRODUCT
GROUP BY (PRICE DIV 10000)*10000
ORDER BY PRICE_GROUP
