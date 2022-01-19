-- Insert Data - One Row

INSERT INTO 
    users_discounts (id_user, id_discount)    
    VALUES (1, 4);


INSERT INTO 
    users_discounts (id_user, id_discount)    
    VALUES (1, 1);

INSERT INTO 
    users_discounts (id_user, id_discount)    
    VALUES (2, 1);

INSERT INTO 
    users_discounts (id_user, id_discount)    
    VALUES (3, 1);

INSERT INTO 
    users_discounts (id_user, id_discount)    
    VALUES (4, 1);


-- Insert Data - Multiple Rows

INSERT INTO 
    users_discounts (id_user, id_discount)    
    VALUES 
        (1, 2),
        (2, 2),
        (3, 2),
        (4, 2);


-- Insert Data - Multiple Rows - Complex - Get First Data 
-- Think 'Simple' at first 

SELECT id FROM discounts WHERE id = 2;
SELECT id AS id_discount FROM discounts WHERE id = 2;

SELECT id AS id_user FROM users WHERE id = 1;

-- Magic - Complex

INSERT INTO 
    users_discounts (id_user, id_discount)    
    VALUES 
        
        (
            (SELECT id FROM users WHERE id = 1), 
            (SELECT id FROM discounts WHERE id = 3)
        ),

        (
            (SELECT id AS id_user FROM users WHERE id = 2), 
            (SELECT id AS id_discount FROM discounts WHERE id = 3)
        ),

        (
            (SELECT id AS id_user FROM users WHERE id = 3), 
            (SELECT id AS id_discount FROM discounts WHERE id = 3)
        ),

        (
            (SELECT id AS id_user FROM users WHERE id = 4), 
            (SELECT id AS id_discount FROM discounts WHERE id = 3)
        );















