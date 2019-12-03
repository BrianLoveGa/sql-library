-- BASIC QUERIES 
-- Unless otherwise stated,
--ALL queries should return ALL columns 
-- Get ALL information about ALL authors

SELECT * 
FROM authors; 

-- Get just the name AND birth year of ALL authors

SELECT name, birth_year 
FROM authors; 

-- Get ALL authors born IN the 20th centruy OR later

SELECT * 
FROM authors 
WHERE birth_year >= 1900; 

-- Get ALL authors born IN the USA

SELECT * 
FROM authors 
WHERE nationality = 'United States of America'; 

-- Get ALL books published ON 1985
    
SELECT * 
FROM books 
WHERE publication_date = 1985; 
    
-- Get ALL books published before 1989
    
SELECT * 
FROM books 
WHERE publication_date < 1989; 

-- Get just the title of ALL books.

SELECT title 
FROM books; 

-- Get just the year that 'A Dance with Dragons' was published 
-- Cry WHEN you realize how long it's been 

SELECT publication_date 
FROM books 
WHERE title = 'A Dance with Dragons'; 

-- Get all books which have `the` somewhere in their title (hint,look up LIKE/ILIKE) 

SELECT * 
FROM books 
WHERE title ILIKE '%the %'; 

-- Add yourself as an author 

INSERT 
INTO authors (name, nationality, birth_year) 
VALUES ('Brian Awesome Loveless', 'United States of America', 1984); 


-- Add two books that you'd LIKE to write (you can hard-code your id AS the author id) 

INSERT 
INTO books (title, publication_date, author_id) 
VALUES ('book of B-Love', 2002, 10); INSERT INTO books (title, publication_date, author_id) VALUES (' B-Love teaches Python wrangling', 2020, 10); 
         
--UPDATE one of your books to have a new title

UPDATE books 
SET title = 'B-Love Loves Python' 
WHERE title = ' B -Love teaches Python wrangling'; 

-- see your books

SELECT * 
FROM books 
WHERE author_id = 10; 

-- library 
-- =# 
-- INSERT INTO books 
-- library-# 
-- (title, 
-- publication_date, 
-- author_id) 
-- library 
-- -# VALUES 
-- library-# 
-- (' B-Love teaches Python wrangling',2020,10); 
-- INSERT 0 1 
-- library=# 
--SELECT * 
-- library-# 
-- FROM books 
-- library 
-- -# WHERE author_id = 10; 
-- id | title | publication_date | author_id -- ----+----------------------------------+------------------+----------- -- 69 | book of B-Love | 2002 | 10 -- 70 | B-Love teaches Python wrangling | 2020 | 10 
-- (2 rows) 




-- Delete your books 



-- Delete your author entry 


-- Delete your books
DELETE 
FROM books 
WHERE title = 'Basketball for Programmers' OR title = 'Programmin Piece of Cake';

-- Delete your author entry
DELETE 
FROM authors 
WHERE name = 'Hou';
-- OR if we found the ID earlier, use that to find and delete instead.
DELETE 
FROM authors 
WHERE ID = 10;
