
/* Retrieve the top 5 customers who have made the highest total purchase amount. Display the customer name along with the total purchase amount in descending order of the purchase amount. 
*/

SELECT c.name AS customer_name, SUM(oi.quantity * oi.unit_price) AS total_purchase_amount
FROM customers AS c
JOIN orders AS o ON c.id = o.customer_id
JOIN order_items AS oi ON o.id = oi.order_id
GROUP BY c.id
ORDER BY total_purchase_amount DESC
LIMIT 5;
