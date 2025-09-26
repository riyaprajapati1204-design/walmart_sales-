SELECT * FROM walmart;

SELECT COUNT(*) FROM walmart;


SELECT 
    "payment_method",
    COUNT(*) AS payment_count
FROM walmart
GROUP BY "payment_method";

SELECT COUNT(DISTINCT "Branch") AS unique_branches FROM walmart;

SELECT MAX("quantity") AS max_quantity FROM walmart;

SELECT MIN("quantity") AS max_quantity FROM walmart;

--Business Problems

--Q.1- Find different payment method and of transaction, number of qty sold:

SELECT 
     payment_method,
	 COUNT(*) as no_payments,
	 SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method


--Q.2- Identify the highest_rated category in each branch, displaying the branch, category:

SELECT *
FROM

(   SELECT 
        "Branch",
		category,
		AVG(rating) as avg_rating,
		RANK() OVER(PARTITION BY "Branch" ORDER BY AVG(rating) DESC) as rank
	FROM walmart
	GROUP BY "Branch", category  
)
WHERE rank = 1


--Q.3- Identify the busiest day for each branch based on the number of transactions:

SELECT *
FROM (
    SELECT 
         "Branch",
         TO_CHAR(TO_DATE(date, 'DD/MM/YY'), 'Day') as day_name,
         COUNT(*) as no_transactions,
         RANK() OVER(PARTITION BY "Branch" ORDER BY COUNT(*) DESC) as rank
    FROM walmart
    GROUP BY "Branch", date
) 
WHERE rank = 1;


--Q.4- Calculate the total quantity of item sold per payment method. List payment_method and total_quantity.-

SELECT
    payment_method,

	SUM(quantity) as no_qty_sold
FROM walmart
GROUP BY payment_method


--Q.5- Determine the average, minimum, and maximum rating of products for each city. List the city, average_rating, min_rating and max_rating.

SELECT
    "City",
	 category,
	 MIN(rating) as min_rating,
	 MAX(rating) as max_rating,
	 AVG(rating) as avg_rating
FROM walmart
GROUP BY 1,2


--Q.6- Calculate the total profit for each category by considering total profit as (unit_price * quantity * profit_margin).
--     List category and total_profit, ordered from highest to lowest profit.

SELECT 
    category,
    SUM(total) AS total_revenue,
    SUM(total * profit_margin) AS profit
FROM walmart_with_total
GROUP BY category;


--Q.7- Determine the most common payment method for each Branch. Display Branch and the preferred_payment_method.

WITH cte
AS
(SELECT
     "Branch",
	 payment_method,
	 COUNT(*) as total_trans,
	 RANK() OVER(PARTITION BY "Branch" ORDER BY COUNT(*) DESC) as rank
FROM walmart
GROUP BY 1,2
)
SELECT *
FROM cte
WHERE rank = 1



--Q.8- Categorize sales into 3 group MORNING, AFTERNOON, EVENING. Find out each of the shift and number of invoices.


SELECT 
    "Branch",
    CASE
        WHEN EXTRACT(HOUR FROM ("time"::time)) < 12 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM ("time"::time)) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS day_time,
    COUNT(*) AS total_transactions
FROM walmart
GROUP BY "Branch", day_time
ORDER BY "Branch", total_transactions DESC;


--Q.9- Identify 5 branch with highest decrese ratio in revenue compare to last year (current year 2023 and last year 2022)-

SELECT
     ls."Branch",
     ls.revenue AS last_year_revenue,
     cs.revenue AS cr_year_revenue,
     ROUND(
         (ls.revenue - cs.revenue)::numeric /
         ls.revenue::numeric * 100, 2
     ) AS rev_dec_ratio
FROM revenue_2022 AS ls
JOIN revenue_2023 AS cs
ON ls."Branch" = cs."Branch"
WHERE ls.revenue > cs.revenue
ORDER BY rev_dec_ratio DESC
LIMIT 5





	





















 
