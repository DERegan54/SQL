-- Comments in SQL Start with dash-dash --

-- 1. [products_db=# INSERT INTO products (name, price, can_be_returned) VALUES('chair', 44.00, false);

-- 2. [products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true);

-- 3. [products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false);

-- 4. [products_db=# SELECT * FROM products;
--  id | name  | price | can_be_returned 
--  ----+-------+-------+-----------------
--   1 | chair |    44 | f
--   2 | stool | 25.99 | t
--   3 | table |   124 | f
-- (3 rows)

-- 5. [products_db=# SELECT name FROM products;
--  name  
-- -------
--  chair
--  stool
--  table
-- (3 rows)

-- 6. [products_db=# SELECT name, price FROM products;
--  name  | price 
-- -------+-------
--  chair |    44
--  stool | 25.99
--  table |   124
-- (3 rows)

-- 7. [products_db=# INSERT INTO products (name, price, can_be_returned) VALUES ('desk', 99.99, true);

-- 8. [products_db=# SELECT * FROM products WHERE can_be_returned=true;
--  id | name  | price | can_be_returned 
-- ----+-------+-------+-----------------
--   2 | stool | 25.99 | t
--   4 | desk  | 99.99 | t
-- (2 rows)


-- 9. [products_db=# SELECT * FROM products WHERE price<44.00;
--  id | name  | price | can_be_returned 
-- ----+-------+-------+-----------------
--   2 | stool | 25.99 | t
-- (1 row)

-- 10. [products_db=# SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;
--  id | name  | price | can_be_returned 
-- ----+-------+-------+-----------------
--   1 | chair |    44 | f
--   2 | stool | 25.99 | t
--   4 | desk  | 99.99 | t
-- (3 rows)

-- 11. [products_db=# UPDATE products SET price=(price-20);
-- UPDATE 4

-- 12. [products_db=# DELETE FROM products WHERE price<25;
-- DELETE 2

-- 13. [products_db=# UPDATE products SET price=(price+20);
-- UPDATE 2

-- 14. [products_db=# UPDATE products SET can_be_returned=true;
-- UPDATE 2
-- products_db=# SELECT * FROM products;
--  id | name  | price | can_be_returned 
-- ----+-------+-------+-----------------
--   3 | table |   124 | t
--   4 | desk  | 99.99 | t
-- (2 rows)

