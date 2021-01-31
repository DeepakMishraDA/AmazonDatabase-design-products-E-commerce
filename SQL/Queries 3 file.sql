USE AMAZON;
select * from footb;
SELECT CASE WHEN year = 'FR' THEN 'FR'
            ELSE 'Not FR' END AS year_gr,
            count(1)
            
           FROM footb;
  SELECT max(weight),
       CASE WHEN weight > 250 THEN 'heavy_weight'
            WHEN weight > 200 AND weight <= 250 THEN 'middle_weight'
            WHEN weight > 175 AND weight <= 200 THEN 'low_weight'
            ELSE 'light_weight' END AS weight_group
  FROM footb group by weight_group ;
  Select *,case when year = 'SR' then player_name
  when year = 'JR' then player_name
  else 'Mr.X' end as age_grp_name
  from footb;
  SELECT *,
       CASE WHEN year IN ('JR', 'SR') THEN player_name ELSE NULL END AS upperclass_player_name
  FROM footb;
  
  SELECT *,CASE WHEN weight >= 300 THEN state
  ELSE 'low_weight' end as 'heavy_region',
  count(1)
  FROM footb group by  heavy_region;
  SELECT CASE WHEN state IN ('CA', 'OR', 'WA') THEN 'West Coast'
            WHEN state = 'TX' THEN 'Texas'
            ELSE 'Other' END AS arbitrary_regional_designation,
            COUNT(1) AS players
  FROM footb
 WHERE weight >= 300
 GROUP BY 1;
 Select case when (year in ('SO', 'FR') and state = 'CA') then 'underclass' 
  when (year in ('SR', 'JR') and state = 'CA') then 'upperclass'
 end as classes, 
 sum(weight)
 from footb 
 group by classes;
 SELECT CASE WHEN year IN ('FR', 'SO') THEN 'underclass'
            WHEN year IN ('JR', 'SR') THEN 'upperclass'
            ELSE NULL END AS class_group,
       SUM(weight) AS combined_player_weight
  FROM footb
 WHERE state = 'CA'
 GROUP BY 1;
 select* from footb;
 Select case when year = 'JR' then state end as jr
 case when year = 'SR' then state end as sr
case when year = 'SO' then state end as so
case when year = 'FR' then state end as fr
 from footb  ;
 
 

SELECT state,
       COUNT(CASE WHEN year = 'FR' THEN 1 ELSE NULL END) AS fr_count,
       COUNT(CASE WHEN year = 'SO' THEN 1 ELSE NULL END) AS so_count,
       COUNT(CASE WHEN year = 'JR' THEN 1 ELSE NULL END) AS jr_count,
       COUNT(CASE WHEN year = 'SR' THEN 1 ELSE NULL END) AS sr_count,
       COUNT(1) AS total_players
  FROM footb
 GROUP BY state
 ORDER BY total_players DESC
 
