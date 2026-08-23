SELECT * FROM menu_items M
INNER JOIN order_details O
ON M.menu_item_id = O.item_id
ORDER BY order_date ASC;
