SELECT M.item_name, COUNT(O.order_details_id) AS item_total_orders, 
DENSE_RANK() OVER (ORDER BY COUNT(O.order_details_id) DESC) AS popularity_ranking
FROM menu_items M
INNER JOIN order_details O
ON M.menu_item_id = O.item_id
GROUP BY M.item_name