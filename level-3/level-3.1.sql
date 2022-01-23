/*
    JOIN - INNER JOIN
*/

SELECT 
    *
FROM users_items
    INNER JOIN users ON users.id = users_items.id_user
    INNER JOIN items ON items.id = users_items.id_item;

-- GET UNDER STOCK ITEMS

SELECT 
    count(*)
FROM users_items
    INNER JOIN users ON users.id = users_items.id_user
    INNER JOIN items ON items.id = users_items.id_item
    GROUP BY users.id;

SELECT 
    count(*) as total_items_bought
FROM users_items
    INNER JOIN users ON users.id = users_items.id_user
    INNER JOIN items ON items.id = users_items.id_item
    GROUP BY users.id;
