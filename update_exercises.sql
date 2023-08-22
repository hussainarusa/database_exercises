-- 1. All albums in your table
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT * FROM albums;

-- 2. All albums released before 1980
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT * FROM albums;

-- 3. All albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums;