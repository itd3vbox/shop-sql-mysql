-- Create a virtual column, when you get data

SELECT
	*,
    IF(quantity > 5, 'Ready', 'Need Fill') as stock_status
FROM items;



