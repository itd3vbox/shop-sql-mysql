-- Update Tables

ALTER TABLE users_items 
    ADD COLUMN `quantity` INT,
    ADD COLUMN `price_unit` FLOAT(8, 2),
    ADD COLUMN `price_total` FLOAT(8, 2);

ALTER TABLE users_discounts 
    ADD COLUMN `status` INT DEFAULT 0;
    
