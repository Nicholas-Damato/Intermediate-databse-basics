-- CREATE TABLE movie(
-- 	movie_id SERIAL PRIMARY KEY,
--   title VARCHAR(100),
--   media_type_id INT REFERENCES media_type(media_type_id)
-- );

-- INSERT INTO movie 
-- (title, media_type_id)
-- VALUES
-- ('some title', 1), ('Star Wars', 2),('Monty Python and the Holy Grail', 1);

-- INSERT INTO movie
-- (title, media_type_id)
-- VALUES
-- ('Hot Fuzz', 4);


-- SELECT * FROM movie

-- ALTER TABLE movie 
-- ADD COLUMN genre_id INT REFERENCES genre(genre_id);

-- UPDATE movie 
-- SET genre_id = 13;

-- UPDATE movie
-- SET genre_id = 22
-- WHERE movie_id IN(3,4);

-- SELECT movie.movie_id, movie.title, movie.genre_id, genre.name AS genre_name FROM movie
-- JOIN genre ON movie.genre_id = genre.genre_id;


-- SELECT a.title, ar.name
-- FROM album a
-- JOIN artist ar ON a.artist_id = ar.artist_id;

-- SELECT * FROM track
-- WHERE genre_id IN (
-- 	SELECT genre_id 
--   FROM genre 
--   WHERE name IN('Jazz','Blues')
-- );

-- UPDATE employee 
-- SET phone = null
-- WHERE employee_id = 2;

-- SELECT * FROM employee;

-- SELECT * FROM employee
-- WHERE phone IS null;

-- SELECT * FROM customer
-- WHERE company IS null;

-- CREATE TABLE students (
-- 	student_id SERIAL PRIMARY KEY,
--   student_name VARCHAR(100),
--   student_email VARCHAR(100)
-- );

-- CREATE TABLE classes (
-- 	class_id SERIAL PRIMARY KEY,
--   class_name VARCHAR(100),
--   class_credits INT
-- );

-- INSERT INTO students
-- (student_name, student_email)
-- VALUES
-- ('Ben','benEmail'),
-- ('Adam', 'adamEmail'),
-- ('Stuart', 'stuartEmail');

-- INSERT INTO classes
-- (class_name, class_credits)
-- VALUES
-- ('English 1010', 4),
-- ('Calculus', 4);

-- CREATE TABLE student_classes (
-- 	student_classes_id SERIAL PRIMARY KEY,
-- 	student_id INT REFERENCES students(student_id),
--   class_id INT REFERENCES classes(class_id)
-- );

-- INSERT INTO student_classes
-- (student_id, class_id)
-- VALUES
-- (1,1);



-- SELECT * FROM students;
-- SELECT * FROM classes;
-- SELECT * FROM student_classes;
-- SELECT * FROM student_classes sc
-- JOIN students s ON s.student_id = sc.student_id
-- JOIN classes c ON c.class_id = sc.class_id; 