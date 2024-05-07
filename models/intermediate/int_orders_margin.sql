SELECT
date_date,
orders_id,
ROUND(SUM(revenue), 2) AS total_revenue,
ROUND(SUM(quantity), 2) AS total_quantity,
ROUND(SUM(purchase_cost), 2) AS total_purchase_cost,
ROUND(SUM(margin), 2) AS total_margin
FROM {{ ref("int_sales_margin")}} 
GROUP BY date_date, orders_id
ORDER BY date_date, orders_id