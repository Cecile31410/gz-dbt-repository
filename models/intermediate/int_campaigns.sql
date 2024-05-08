SELECT
*
FROM {{ ref("stg_raw__adwords")}} AS adwords
UNION ALL
SELECT
*
FROM {{ ref("stg_raw__bing")}} AS bing
UNION ALL
SELECT
*
FROM {{ ref("stg_raw__criteo")}} AS criteo
UNION ALL
SELECT
*
FROM {{ ref("stg_raw__facebook")}} AS facebook