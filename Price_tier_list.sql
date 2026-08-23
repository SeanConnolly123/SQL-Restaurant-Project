SELECT 
      COUNT(item_name) AS Total_items, Price_Tier_List
FROM
(SELECT M.item_name, M.price,
CASE
    WHEN M.price > 13 THEN 'High'
    WHEN M.price BETWEEN 10 AND 13 THEN 'Medium' 
    ELSE 'Low'
    END AS Price_Tier_List
FROM menu_items M
INNER JOIN order_details O
ON M.menu_item_id = O.item_id
) AS Price_Tier_Table
GROUP BY Price_Tier_List;
