SELECT
date_date,
orders_id,
total_revenue,
total_quantity,
total_purchase_cost,
total_margin,
ROUND(total_margin+shipping_fee-logcost-ship_cost, 2) AS operational_margin
FROM {{ ref("int_orders_margin")}} AS orders_margin
LEFT JOIN {{ ref("stg_raw__ship")}} AS ship
USING(orders_id)