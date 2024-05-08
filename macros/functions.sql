{% macro margin_percent(revenue,purchase_price,quantity) %}
    ROUND(SAFE_DIVIDE(revenue-quantity*purchase_price, revenue), 2)
{% endmacro %}