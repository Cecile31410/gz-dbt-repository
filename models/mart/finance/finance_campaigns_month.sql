SELECT
EXTRACT(MONTH FROM date_date) AS datemonth
, ROUND(SUM(ads_margin), 2) AS ads_margin
, ROUND(SUM(average_basket), 2) AS average_basket
, ROUND(SUM(margin), 2) AS margin
, ROUND(SUM(operational_margin),2) AS operational_margin
, ROUND(SUM(revenue), 2) AS revenue
, SUM(nb_transactions) AS nb_transactions
FROM {{ ref("finance_campaigns_day")}}
GROUP BY datemonth
ORDER BY datemonth DESC