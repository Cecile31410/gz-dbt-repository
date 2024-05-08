SELECT
products_id,
date_date,
orders_id,
revenue,
quantity,
purchase_price,
quantity*purchase_price AS purchase_cost,
ROUND(revenue-(quantity*purchase_price),2) AS margin,
{{ margin_percent("revenue", "purchase_price","quantity") }} AS margin_percent

FROM {{ ref("stg_raw__sales")}} AS sales
LEFT JOIN {{ ref("stg_raw__product")}} AS product
    USING(products_id)