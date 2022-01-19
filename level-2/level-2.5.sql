-- Using Trigger - To ease some tasks

-- Create Trigger

DELIMITER $$

CREATE TRIGGER trigger_users_items
    AFTER INSERT
    ON users_items FOR EACH ROW
BEGIN

    
    UPDATE items 
        SET quantity = quantity - NEW.quantity
        WHERE id = NEW.id_item;


END $$    

DELIMITER ;

-- Drop Trigger

DROP TRIGGER trigger_users_items;


-- Add some items for users - (Cart)

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    VALUES
        (1, 2, 1.99, 3, (1.99 * 3));

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    VALUES
        (2, 3, 1.99, 4, (1.99 * 4));

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    VALUES
        (3, 2, 1.99, 5, (1.99 * 3));

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    VALUES
        (4, 3, 1.99, 7, (1.99 * 4));

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    VALUES
        (1, 10, 1.99, 3, (4.99 * 3));

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    VALUES
        (2, 13, 1.99, 4, (4.99 * 4));

INSERT INTO 
    users_items (id_user, id_item, price_unit, quantity, price_total)
    VALUES
        (3, 14, 1.99, 5, (4.99 * 3));


