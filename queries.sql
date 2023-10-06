CREATE TABLE IF NOT EXISTS Users (
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  password VARCHAR(45) NOT NULL,
  role ENUM('customer', 'administrator') NOT NULL,
  user_profile_id INT NOT NULL,
  FOREIGN KEY (user_profile_id) REFERENCES UserProfile (user_profile_id)
);
/* Заполняем таблицу user */
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user1', 'administrator', user_profile_id
FROM UserProfile
WHERE name_us = 'Иван Иванов';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user2', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Мария Петрова';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user3', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Алексей Смирнов';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user4', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Екатерина Козлова';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user5', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Андрей Зайцев';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user6', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Ольга Попова';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user7', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Павел Сидоров';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user8', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Елена Иванова';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user9', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Дмитрий Петров';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user10', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Наталья Смирнова';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user11', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Сергей Козлов';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user12', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Татьяна Зайцева';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user13', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Андрей Попов';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user14', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Евгения Сидорова';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user15', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Ирина Иванова';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user16', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Александр Петров';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user17', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Елена Козлова';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user18', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Олег Зайцев';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user19', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Валентина Сидорова';
 INSERT INTO Users (password, role, user_profile_id)
SELECT 'password_user19', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Максим Петров';