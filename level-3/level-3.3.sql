/*
    JOIN - LEFT JOIN
*/

SELECT 
    *
FROM users_items
    LEFT JOIN items ON items.id = users_items.id_item;


