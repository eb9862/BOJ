-- 코드를 입력하세요
SELECT order_id, product_id, left(out_date, 10),
case
    when out_date is null then "출고미정"
    when datediff("2022-05-01", out_date) >= 0 then "출고완료"
    else "출고대기"
    end as "출고여부"
from food_order
order by order_id