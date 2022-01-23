/*
    JOIN - RIGHT JOIN
*/

SELECT 
    *
FROM users_items
    RIGHT JOIN items ON items.id = users_items.id_item;



