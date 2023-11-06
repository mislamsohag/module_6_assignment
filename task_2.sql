
/* Retrieve the product name, quantity, and total amount for each order item. Display the result in ascending order of the order ID.
 */

SELECT p.name AS product_name, oi.quantity, oi.unit_price * oi.quantity AS total_amount
FROM order_items AS oi
JOIN products AS p ON oi.product_id = p.id
ORDER BY oi.id ASC;