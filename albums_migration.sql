USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artist VARCHAR (69) NOT NULL,
    name VARCHAR(69) NOT NULL,
    release_date INT NOT NULL,
    sales FLOAT NOT NULL,
    genre VARCHAR(69) NOT NULL
);