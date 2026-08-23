SELECT M.category, COUNT(O.order_details_id) AS total_orders
FROM menu_items M
INNER JOIN order_details O
ON M.menu_item_id = O.item_id
GROUP BY M.category
ORDER BY total_orders DESC;