select * from walmart;
drop table walmart;
select count(*) from walmart;

select 
payment_method,
count(*)
from walmart
GROUP BY payment_method;


select count(distinct branch)
from walmart;

select max(quantity) from walmart;

select min(quantity) from walmart;

-- Business problems
-- Analyze Payment Methods and Sales

-- 1. Find different payment methods, and how many transactions and no.of qty sold

SELECT
    payment_method,
    COUNT(*) AS no_payments,
    SUM(quantity) AS no_qty_sold
FROM walmart
GROUP BY payment_method;

-- 2. Identify the Highest-Rated Category in Each Branch,displaying the branch,category
SELECT *
FROM
( SELECT
      branch,
      category,
      AVG(rating) as avg_rating,
      RANK()OVER(PARTITION BY branch ORDER BY AVG(rating)DESC) as rank
  FROM walmart
  GROUP BY 1,2
)
WHERE rank = 1;

--3.Identify the Busiest Day for Each Branch based on n.of transactions
SELECT *
FROM
(SELECT
  branch,
  TO_CHAR(TO_DATE(date,'DD/MM/YY'),'Day') AS formated_date,
  COUNT(*) AS no_transactions,
  RANK()OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) AS rank
FROM walmart
GROUP BY 1,2
)
WHERE rank = 1;

-- 4. Calculate Total Quantity of items Sold by Payment Method.List payment_method and total_quantity
SELECT
    payment_method,
    --COUNT(*) AS no_payments,
    SUM(quantity) AS no_qty_sold
FROM walmart
GROUP BY payment_method;

-- 5.  Determine the average, minimum, and maximum rating of category for each city.
--  List the City average_ratinf,min and max_ratings.
SELECT
  city,
  category,
  MIN(rating) AS min_rating,
  MAX(rating) AS max_rating,
  AVG(rating) AS avg_rating
FROM walmart
GROUP BY 1,2;

-- 6.  6. Calculate Total Profit for each Category by considering total profit as(unit_price*quantity*profit_margin)
-- List category and total profit , ranked from highest to lowest?
SELECT 
  category,
    SUM(total) AS total_revenue,
	SUM(total*profit_margin) AS profit
FROM walmart
GROUP BY category;

--7. Determine the Most Common Payment Method for each Branch.
-- Display branch and the preferred_payment_method .
WITH cte
AS
(SELECT
   branch,
   payment_method,
   COUNT(*) AS total_transactions,
   RANK()OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) AS rank
FROM walmart
GROUP BY 1,2
)
SELECT * 
FROM cte
WHERE rank = 1;

--8. Categorize Sales into 3 groups Morning, Afternoon, Evening
-- Find out which of the shift and no.of invoices

SELECT
  branch,
  CASE 
     WHEN EXTRACT (HOUR FROM(time::time)) < 12 THEN 'Morning'
	 WHEN EXTRACT (HOUR FROM(time::time))BETWEEN 12 AND 17 THEN 'Afternoon'
	 ELSE 'Evening'
  END day_time,
  COUNT(*)
FROM walmart
GROUP BY branch,day_time
ORDER BY 1,3 DESC

-- 9.Identify 5 Branches with Highest decrease  ratio in 
--Revenue compared to last year (current year 2023 and last year 2022)
-- revenue_decrease_ratio == last_rev-cur_rev/last_rev*100

SELECT *,
EXTRACT(YEAR FROM TO_DATE(date,'DD/MM/YY')) as formated_date
FROM walmart
-- 2022 SALES
WITH revenue_2022
AS
(   SELECT
        branch,
        SUM(total) as revenue  
    FROM walmart
    WHERE EXTRACT(YEAR FROM TO_DATE(date,'DD/MM/YY')) = 2022
    GROUP BY 1
),

-- 2023 SALES
revenue_2023
AS
(SELECT
        branch,
        SUM(total) as revenue  
    FROM walmart
    WHERE EXTRACT(YEAR FROM TO_DATE(date,'DD/MM/YY')) = 2023
    GROUP BY 1
)
SELECT 
  ls.branch,
  ls.revenue as last_year_revenue,
  cs.revenue as current_year_revenue,
  ROUND(
     (ls.revenue - cs.revenue)::numeric/ls.revenue ::numeric * 100 ,2 ) AS rev_dec_ratio
FROM revenue_2022 as ls
JOIN 
revenue_2023 as cs
ON ls.branch = cs.branch
WHERE 
   ls.revenue > cs.revenue
ORDER BY 4 DESC
LIMIT 5