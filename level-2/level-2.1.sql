-- Get Data from Table 

SELECT * FROM items;

-- Get Data from Table, with filter 

SELECT * FROM items
    WHERE price < 4.00;

-- Get Data from Table, with some coditions

SELECT * FROM items
    WHERE 
        price < 4.00
        AND
        name LIKE 'T-Shirt%'
    LIMIT 10;


-- Get Data from Table, with some complex conditions
-- Deeper parentheses at first
/*
SELECT * FROM items
    WHERE id = 1  

    (
        (CONDITION) 
        AND 
        (CONDITION) 
    )
    
    OR 

    (
        (
            (CONDITION) 
            AND 
            (CONDITION)
        )

        OR 

        (CONDITION)
    );
*/

-- Get limited Data from Table

SELECT * FROM items
    WHERE price < 4.00
    LIMIT 10;

-- Get limited Data from Table, and get from specific position (ROW)

SELECT * FROM items
    WHERE price < 4.00
    LIMIT 10 OFFSET 5;

-- Get limited Data from Table, and get ordered data

SELECT * FROM items
    WHERE price < 4.00
    ORDER BY name ASC
    LIMIT 10;