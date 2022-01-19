-- Insert Data

INSERT INTO 
    discounts (name, description, rate)    
    VALUES ('Summer Sale', 'Spring Sale ...', 10.00);

-- Insert Data - Multiple Rows - Fast & Complex
-- Think 'Simple' at first 
-- Using alias to ease reading

SELECT id FROM discounts WHERE id = 5;
SELECT id AS id_discount FROM discounts WHERE id = 5;

SELECT id FROM users;
SELECT id AS id_user FROM users;


SELECT 
    id AS id_user, 
    ( SELECT id FROM discounts WHERE id = 5 ) AS id_discount 
FROM users;


SELECT id AS id_user, ( SELECT id FROM discounts WHERE id = 5 ) AS id_discount 
    FROM users
    ORDER BY id_user ASC;


-- Magic - Fast & Complex

INSERT INTO 
    users_discounts (id_user, id_discount) 

    SELECT 
        id AS id_user, 
        ( SELECT id FROM discounts WHERE id = 5 ) AS id_discount 
        
    FROM users;