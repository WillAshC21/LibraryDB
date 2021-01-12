CREATE TABLE person (
	id INT NOT NULL AUTO_INCREMENT,
    first VARCHAR(250) NOT NULL,
	last VARCHAR(250) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(250),
    phone INT,
    PRIMARY KEY (id)
);

CREATE TABLE books (
	id INT NOT NULL AUTO_INCREMENT,
    book_name VARCHAR(1000) NOT NULL,
    book_author VARCHAR(250) NOT NULL,
    book_pages INT NOT NULL,
    book_genre VARCHAR(100) NOT NULL,
	book_publisher VARCHAR(250) NOT NULL,
	book_isbn INT NOT NULL,
    book_year INT,
    person_id INT,
	PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES person(id)
);

INSERT INTO person (first, last, age, phone) VALUES ("John", "Doe", 32, 1234567890);
INSERT INTO person (first, last, age, email) VALUES ("Robert", "Smith", 24, "someuser@example.com");
INSERT INTO person (first, last, age, phone) VALUES ("Clark", "Kent", 34, 0987654321);
INSERT INTO person (first, last, age, email) VALUES ("Jane", "Die", 26, "ex@email.com");
SELECT * FROM person;
SELECT first, last, age, phone FROM person;

INSERT INTO books (book_name, book_author, book_pages, book_genre, book_publisher, book_isbn, book_year) VALUES ("Dune", "Frank Herbert", 792, "Sci-Fi", "TOR", 239472965, 1965);
INSERT INTO books (book_name, book_author, book_pages, book_genre, book_publisher, book_isbn) VALUES ("Pride & Prejudice", "Jane Austin", 310, "Romance", "Penguin", 372890432); 
INSERT INTO books (book_name, book_author, book_pages, book_genre, book_publisher, book_isbn, person_id) VALUES ("The Sound and The Fury", "William Faulkner", 272, "Drama", "Cape", 553789734, 1);
SELECT * FROM books;
