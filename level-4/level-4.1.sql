/*
    CALCUL - RANDOM
*/

SELECT 5 * 3;

SELECT FLOOR(RAND() * (10 - 1) + 1) AS quantity;

SELECT COUNT(*) FROM items;
SELECT FLOOR(RAND() * ( (SELECT COUNT(*) FROM items) - 1) + 1) AS id_item;


/*
    RANDOM items
        - id
        - unit price
        - total quantity


    SOME TIME BUG - BUT JUST UNDERSTAND THE DEEP COMPLEX STRUCTURE ONLY WITH SIMPLE SQL CODE
*/

SELECT 
    id, 
    price AS unit_price,  
    ( SELECT FLOOR(RAND() * (quantity - 1) + 1) ) AS total_quantity
FROM 
    items     
WHERE 
    id = ( SELECT FLOOR(RAND() * ( (SELECT COUNT(*) FROM items) - 1) + 1) )
LIMIT 1;


SELECT
    id
FROM
    users;


SELECT 
    users.id AS id_user,
    items_cart.*
FROM 
    users,

    -- TABLE TEMPORAIRE
    (
        SELECT 
            id AS id_item, 
            price AS unit_price,  
            ( SELECT FLOOR(RAND() * (quantity - 1) + 1) ) AS total_quantity
        FROM 
            items     
        WHERE 
            id = ( SELECT FLOOR(RAND() * ( (SELECT COUNT(*) FROM items) - 1) + 1) )
        LIMIT 1
    ) as items_cart

WHERE 
    users.id = 1;
