use amazon;
select *
From summary;

select convert(substring(rating, 1,3), float) as Ratings from summary;

SELECT CONVERT('4.5', float );
Select avg(convert((select substring(rating, 1,3)), float)) as ratin, product_type from summary group by product_type;

select rating from summary where product_type = 'Keyboard' order by rating asc; 

SELECT rating ,CONVERT(SUBSTRING_INDEX(rating,' out of 5 stars',),UNSIGNED INTEGER) AS num
FROM summary
ORDER BY num;

Select avg(convert((select substring(rating, 1,3)), float)) as Rating, product_type as 'Top_three' from summary 
group by product_type
order by Rating desc limit 3;

Select sum(review_count) as Total_reviews, product_type
from summary
group by product_type 
order by Total_reviews desc;
use amazon;
select* from summary limit 5;
select product_type, name, max(review_count) from summary group by product_type;

#where product_type = ('Headphones'and 'Smartphone' and 'Dslr') order by review_count desc limit 9;
SET @rowindex := 0;
SELECT
d.rating
   From (SELECT @rowindex:=@rowindex + 1  AS rowindex,
           convert(substring(rating, 1,3), float) as rating
    FROM summary where rating is not null order by rating) as d
    WHERE
d.rowindex IN (FLOOR(@rowindex / 2), CEIL(@rowindex / 2));

SET @rowindex := 0;

Select d.product_type, d.rating as Median_rating
    from (SELECT 
    convert(substring(rating, 1,3), float) as rating, product_type,
    row_number() over (partition by product_type) as row_n
    FROM summary where rating is not null order by rating) as d
    WHERE d.row_n in (FLOOR(d.row_n / 2) , CEIL(d.row_n / 2));
SELECT 
    convert(substring(rating, 1,3), float) as rating, product_type,
    row_number() over (partition by product_type) as row_n
    FROM summary where rating is not null order by rating; 
   
