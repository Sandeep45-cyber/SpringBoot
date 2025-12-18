CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INTEGER NOT NULL,
    category_id INTEGER,
    image_url VARCHAR(255),
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES category (id)
);

INSERT INTO category (name, description) VALUES ('Electronics', 'Gadgets and devices');
INSERT INTO category (name, description) VALUES ('Books', 'Fiction and non-fiction');

INSERT INTO product (name, description, price, stock_quantity, category_id, image_url) 
VALUES ('Smartphone', 'Latest model', 699.99, 50, 1, 'http://example.com/phone.jpg');
