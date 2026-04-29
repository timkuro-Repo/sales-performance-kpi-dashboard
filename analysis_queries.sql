SELECT ROUND(SUM(revenue), 2) AS total_revenue,
       ROUND(SUM(profit), 2) AS total_profit,
       ROUND(100.0 * SUM(profit) / SUM(revenue), 2) AS profit_margin,
       COUNT(DISTINCT order_id) AS total_orders
FROM sales_data;

SELECT region,
       ROUND(SUM(revenue), 2) AS revenue,
       ROUND(SUM(profit), 2) AS profit,
       ROUND(100.0 * SUM(profit) / SUM(revenue), 2) AS margin
FROM sales_data
GROUP BY region
ORDER BY revenue DESC;

SELECT category,
       channel,
       ROUND(SUM(revenue), 2) AS revenue,
       ROUND(SUM(profit), 2) AS profit
FROM sales_data
GROUP BY category, channel
ORDER BY revenue DESC;
