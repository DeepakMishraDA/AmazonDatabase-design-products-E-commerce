load data
infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Data\\amazon\\important.txt'
into table amazon.freq
fields terminated by ','
ENCLOSED BY '"' 
lines terminated by '\n'
ignore 1 rows;

select d.product_type,
       d.review_count,
       d.name, d.rating
from (select d.product_type,  convert(substring(d.rating, 1,3), float) as rating,
			d.name,
            row_number() over(partition by d.product_type order by rating desc) as rn
     from summary as d
     ) as d
where d.rn <= 3;
select d.product_type,
       d.name, d.rating, d.review_count
from (select d.product_type, convert(substring(d.rating, 1,3), float) as rating,
			d.name,d.review_count,
            row_number() over(partition by d.product_type order by review_count desc) as top
     from summary as d) as d
     where d.top <= 3;
     select d.name as Brands, d.rating as 'Top Rated', d.product_type as Products
from (select d.product_type, convert(substring(d.rating, 1,3), float) as rating,
			d.name,
            row_number() over(partition by d.product_type order by rating desc) as top
     from summary as d) as d
     where d.top <= 3;