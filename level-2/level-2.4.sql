-- For each users take/give all items

SELECT * FROM `users`, `items`;

-- Alias: u => users    i => items

SELECT 

    u.id, u.name, i.id, i.name 

    FROM `users` AS u, `items` AS i;


