CREATE DATABASE sanubari_store;

USE sanubari_store;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    brand VARCHAR(100),
    description TEXT,
    image_url TEXT,
    price DECIMAL(12,2),
    stock INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO products
(name, brand, description, image_url, price, stock)
VALUES
(
'Adidas Samba',
'Adidas',
'Sepatu Adidas Samba Original',
'https://images.unsplash.com/photo-1542291026-7eec264c27ff',
1500000,
10
),
(
'New Balance 530',
'New Balance',
'NB 530 Premium',
'https://images.unsplash.com/photo-1549298916-b41d501d3772',
1800000,
5
);

