/*
    MAGIC - INSERT TEST ...
*/

-- USER 1

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    SELECT 
        users.id AS id_user,
        items_cart.*,
        0
    FROM 
        users,
        (
            SELECT 
                id AS id_price, 
                price AS price_unit,  
                ( SELECT FLOOR(RAND() * (quantity - 1) + 1) ) AS quantity
            FROM 
                items     
            WHERE 
                id = ( SELECT FLOOR(RAND() * ( (SELECT COUNT(*) FROM items) - 1) + 1) )
            LIMIT 1
        ) AS items_cart
    WHERE 
        users.id = 1;


-- USER 2

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    SELECT 
        users.id AS id_user,
        items_cart.*,
        0
    FROM 
        users,
        (
            SELECT 
                id AS id_price, 
                price AS price_unit,  
                ( SELECT FLOOR(RAND() * (quantity - 1) + 1) ) AS quantity
            FROM 
                items     
            WHERE 
                id = ( SELECT FLOOR(RAND() * ( (SELECT COUNT(*) FROM items) - 1) + 1) )
            LIMIT 1
        ) AS items_cart
    WHERE 
        users.id = 2;

-- USER 3

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    SELECT 
        users.id AS id_user,
        items_cart.*,
        0
    FROM 
        users,
        (
            SELECT 
                id AS id_price, 
                price AS price_unit,  
                ( SELECT FLOOR(RAND() * (quantity - 1) + 1) ) AS quantity
            FROM 
                items     
            WHERE 
                id = ( SELECT FLOOR(RAND() * ( (SELECT COUNT(*) FROM items) - 1) + 1) )
            LIMIT 1
        ) AS items_cart
    WHERE 
        users.id = 3;

-- USER 4

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    SELECT 
        users.id AS id_user,
        items_cart.*,
        0
    FROM 
        users,
        (
            SELECT 
                id AS id_price, 
                price AS price_unit,  
                ( SELECT FLOOR(RAND() * (quantity - 1) + 1) ) AS quantity
            FROM 
                items     
            WHERE 
                id = ( SELECT FLOOR(RAND() * ( (SELECT COUNT(*) FROM items) - 1) + 1) )
            LIMIT 1
        ) AS items_cart
    WHERE 
        users.id = 4;


-- UDPDATE

UPDATE users_items
    SET price_total = price_unit * quantity;