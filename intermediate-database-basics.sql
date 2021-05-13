-- SELECT *
-- FROM invoice i
-- JOIN invoice_line il ON il.invoice_id = i.invoice_id
-- WHERE il.unit_price > 0.99;

-- SELECT i.invoice_date, c.first_name, c.last_name, i.total
-- FROM invoice i
-- JOIN customer c ON i.customer_id = c.customer_id;

-- SELECT c.first_name, c.last_name, e.first_name, e.last_name
-- FROM customer c
-- JOIN employee e ON e.employee_id = c.customer_id;

-- SELECT a.title, ar.name
-- FROM album a
-- JOIN artist ar ON a.album_id = ar.artist_id;

-- SELECT pt.track_id 
-- FROM playlist_track pt 
-- JOIN playlist p ON p.playlist_id = pt.playlist_id
-- WHERE p.name = 'Music';

-- SELECT t.name
-- FROM track t
-- JOIN playlist_track pt ON pt.track_id = t.track_id
-- WHERE pt.playlist_id = 5;

-- SELECT t.name, p.name
-- FROM track t
-- JOIN playlist_track pt ON t.track_id = pt.track_id
-- JOIN playlist p ON pt.playlist_id = p.playlist_id;

-- SELECT t.name, al.title
-- FROM track t
-- JOIN album al ON al.album_id = t.album_id
-- JOIN genre g ON g.genre_id = t.genre_id
-- WHERE g.name = 'Alternative & Punk';

-- SELECT *
-- FROM invoice
-- WHERE invoice_id IN (
--   SELECT invoice_id
--   FROM invoice_line
--   WHERE unit_price > 0.99);

-- SELECT * 
-- FROM playlist_track
-- WHERE playlist_id IN (
--   SELECT playlist_id 
--   FROM playlist
--   WHERE name = 'Music');

-- SELECT name 
-- FROM track
-- WHERE track_id IN (
--   SELECT track_id
--   FROM playlist_track
--   WHERE playlist_id = 5);

-- SELECT * 
-- FROM track
-- WHERE genre_id IN (
--   SELECT genre_id
--   FROM genre
--   WHERE name = 'Comedy');

-- SELECT *
-- FROM track
-- WHERE album_id IN (
--   SELECT album_id
--   FROM album
--   WHERE name = 'Fireball');

-- SELECT *
-- FROM track
-- WHERE album_id IN (
--   SELECT album_id 
--   FROM album
--   WHERE artist_id IN (
--     SELECT artist_id 
--     FROM artist
--     WHERE name = 'Queen'));

-- UPDATE customer
-- SET fax = null
-- WHERE fax IS NOT null;

-- UPDATE customer 
-- SET company = 'Self'
-- WHERE company is null;

-- UPDATE customer
-- SET last_name = 'Thompson'
-- WHERE first_name = 'Julia' AND last_name = 'Barnett';

-- UPDATE customer
-- SET support_rep_id = 4
-- WHERE email = 'luisrojas@yahoo.cl';

-- UPDATE track
-- SET composer = 'The darkness around us'
-- WHERE genre_id IN (
--   SELECT genre_id
--   FROM genre
--   WHERE name = 'Metal') AND composer IS null;


-- SELECT COUNT(*), g.name
-- FROM track t
-- JOIN genre g ON t.genre_id = g.genre_id
-- GROUP BY g.name;

-- SELECT COUNT(*), g.name
-- FROM track t
-- JOIN genre g ON t.genre_id = g.genre_id
-- WHERE g.name = 'Pop' OR g.name = 'Rock'
-- GROUP BY g.name;

-- SELECT COUNT(*), a.name
-- FROM album al
-- JOIN artist a ON a.artist_id = al.artist_id
-- GROUP BY a.name;

-- SELECT DISTINCT composer
-- FROM track;

-- SELECT DISTINCT billing_postal_code
-- FROM invoice;

-- SELECT DISTINCT company 
-- FROM customer;

-- DELETE FROM practice_delete
-- WHERE type = 'bronze';

-- DELETE FROM practice_delete
-- WHERE type = 'silver';

-- DELETE FROM practice_delete
-- WHERE value = 150;

-- CREATE TABLE users (
--   user_id SERIAL PRIMARY KEY,
-- 	name VARCHAR(50),
--   email VARCHAR(100)
-- );

-- CREATE TABLE products (
-- 	product_id SERIAL PRIMARY KEY,
--   name VARCHAR(100),
--   price INT
-- );

-- CREATE TABLE orders (
--   order_id SERIAL PRIMARY KEY,
--   product_id INT REFERENCES products(product_id)
-- );

-- INSERT INTO users
-- (name, email)
-- VALUES
-- ('Me', 'Me@Me.com'),('You', 'You@You.com'), ('Them', 'Them@Them.com');

-- INSERT INTO products
-- (name, price)
-- VALUES
-- ('Chair', 50),('Table',100),('Desk', 200);

-- INSERT INTO orders
-- (product_id)
-- VALUES
-- (1),(2),(3);


-- SELECT name 
-- FROM products p
-- JOIN orders o ON p.product_id = o.product_id
-- WHERE name = 'Chair';

-- ALTER TABLE users
-- ADD COLUMN order_id INT REFERENCES orders(order_id);



-- SELECT * FROM users;
-- SELECT * FROM products;
-- SELECT * FROM orders;