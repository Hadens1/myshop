/* Создаем БД MyShop, если она не существует */
CREATE DATABASE IF NOT EXISTS MyShop;

/* Заходим в БД MyShop */
USE MyShop;

/* Создаем таблицу category */
CREATE TABLE IF NOT EXISTS category (
  category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(45) NOT NULL
);

/* Создаем таблицу Promotions */


CREATE TABLE IF NOT EXISTS Promotions (
  promotion_id INT AUTO_INCREMENT PRIMARY KEY,
  name_promo VARCHAR(100),
  descriptions TEXT,
  discount DECIMAL(5, 1) 
);

/* Создаем таблицу Products */
CREATE TABLE IF NOT EXISTS Products (
  product_id INT NOT  NULL AUTO_INCREMENT PRIMARY KEY,
  name_pr VARCHAR(45) NOT NULL UNIQUE,
  price DECIMAL(10, 2) NOT NULL,
  pr_description VARCHAR(100) NOT NULL,
  remaining_quantity INT  NULL, /* Оставшееся количество товара */
  promotion_id INT NULL,
  category_id INT NULL,
  CONSTRAINT fk_promotion_id FOREIGN KEY (promotion_id) REFERENCES Promotions (promotion_id) ON DELETE CASCADE ON UPDATE CASCADE,
  INDEX idx_name_pr (name_pr)
);

/* Создаем таблицу Categories_Products */
CREATE TABLE IF NOT EXISTS Categories_Products (
  category_product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_id INT NOT NULL,
  product_id INT NOT NULL,
  CONSTRAINT fk_category_id_categories_products FOREIGN KEY (category_id) REFERENCES category (category_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_product_id_categories_products FOREIGN KEY (product_id) REFERENCES Products (product_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* Создаем таблицу UserProfile */
CREATE TABLE IF NOT EXISTS UserProfile (
  user_profile_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name_us VARCHAR(45)  NULL,
  nambur VARCHAR(45)  NULL,
  adress VARCHAR(45)  NULL,
  email VARCHAR(45)  NULL UNIQUE
);

/* Создаем таблицу Users */
CREATE TABLE IF NOT EXISTS Users (
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  password VARCHAR(45) NOT NULL,
  role ENUM('customer', 'administrator') NOT NULL,
  user_profile_id INT NOT NULL UNIQUE,
  FOREIGN KEY (user_profile_id) REFERENCES UserProfile (user_profile_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* Создаем таблицу Shipping */
CREATE TABLE IF NOT EXISTS Shipping (
  shipping_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name_sh ENUM('Cамовывоз','Курьер') NOT NULL,
  cost DECIMAL(10, 2) NOT NULL,
  data_sh DATE NOT NULL
);

/* Создаем таблицу Orders */
CREATE TABLE IF NOT EXISTS Orders (
  order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT NULL,
  status ENUM('processing', 'shipped', 'delivered', 'completed') NOT NULL,
  shipping_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES Users (user_id) ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (shipping_id) REFERENCES Shipping (shipping_id) ON DELETE CASCADE ON UPDATE CASCADE
);

/* Создаем таблицу Reviews */
CREATE TABLE IF NOT EXISTS Reviews (
  review_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id INT NULL,
  user_id INT NULL,
  rating INT NOT NULL,
  comments TEXT,
  FOREIGN KEY (product_id) REFERENCES Products (product_id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES Users (user_id)
);

/* Создаем таблицу Orders_Products (Корзина) */
CREATE TABLE IF NOT EXISTS Orders_Products (
  order_product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT , /* Количество товара в корзине */
  CONSTRAINT fk_order_id_orders_products FOREIGN KEY (order_id) REFERENCES Orders (order_id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_product_id_orders_products FOREIGN KEY (product_id) REFERENCES Products (product_id) ON DELETE CASCADE ON UPDATE CASCADE
);







