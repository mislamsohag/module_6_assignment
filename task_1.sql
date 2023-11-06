

/*Retrieve all customer information along with the total number of orders placed by each customer. Display the result in descending order of the number of orders. 
*/

SELECT c.id, c.name, c.email, c.location, COUNT(o.id) AS total_orders
FROM customers AS c
LEFT JOIN orders AS o ON c.id = o.id
GROUP BY c.id
ORDER BY total_orders DESC;

