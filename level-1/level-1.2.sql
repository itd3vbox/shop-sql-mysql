-- Create Tables

CREATE TABLE users
(
    `name` VARCHAR(40),
    `email` VARCHAR(250) UNIQUE,
    `password` VARCHAR(250),

    `created_at` DATETIME DEFAULT NOW(),
    `updated_at` DATETIME DEFAULT NOW(),

    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT
);

-- Delete Tables

DROP TABLE users;

CREATE TABLE items
(
    `name` VARCHAR(40),
    `description` TEXT,
    `price` FLOAT(8,2),
    `quantity` INT,

    `created_at` DATETIME DEFAULT NOW(),
    `updated_at` DATETIME DEFAULT NOW(),

    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT
);

DROP TABLE items;

CREATE TABLE users_items
(
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `id_user` INT,
    `id_item` INT, 

    `created_at` DATETIME DEFAULT NOW(),
    `updated_at` DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (id_user) REFERENCES users (id),
    FOREIGN KEY (id_item) REFERENCES items (id)
);

DROP TABLE users_items;

CREATE TABLE discounts
(
    `name` VARCHAR(40),
    `description` TEXT,
    `rate` FLOAT(8,2),

    `created_at` DATETIME DEFAULT NOW(),
    `updated_at` DATETIME DEFAULT NOW(),

    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT
);

DROP TABLE discounts;

CREATE TABLE users_discounts
(
    `id` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    `id_user` INT,
    `id_discount` INT, 

    `created_at` DATETIME DEFAULT NOW(),
    `updated_at` DATETIME DEFAULT NOW(),
    
    FOREIGN KEY (id_user) REFERENCES users (id),
    FOREIGN KEY (id_discount) REFERENCES discounts (id)
);

DROP TABLE users_discounts;