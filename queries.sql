CREATE TABLE IF NOT EXISTS Users (
  user_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  password VARCHAR(45) NOT NULL,
  role ENUM('customer', 'administrator') NOT NULL,
  user_profile_id INT NOT NULL,
  FOREIGN KEY (user_profile_id) REFERENCES UserProfile (user_profile_id)
);
SELECT 'password_user1', 'administrator', user_profile_id
FROM UserProfile
WHERE name_us = 'Иван Иванов';
SELECT 'password_user2', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Мария Петрова';
SELECT 'password_user3', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Алексей Смирнов';
SELECT 'password_user4', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Екатерина Козлова';
SELECT 'password_user5', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Андрей Зайцев';
SELECT 'password_user6', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Ольга Попова';
SELECT 'password_user7', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Павел Сидоров';
SELECT 'password_user8', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Елена Иванова';
SELECT 'password_user9', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Дмитрий Петров';
SELECT 'password_user10', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Наталья Смирнова';
SELECT 'password_user11', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Сергей Козлов';
SELECT 'password_user12', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Татьяна Зайцева';
SELECT 'password_user13', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Андрей Попов';
SELECT 'password_user14', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Евгения Сидорова';
SELECT 'password_user15', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Ирина Иванова';
SELECT 'password_user16', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Александр Петров';
SELECT 'password_user17', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Елена Козлова';
SELECT 'password_user18', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Олег Зайцев';
SELECT 'password_user19', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Валентина Сидорова';
SELECT 'password_user19', 'customer', user_profile_id
FROM UserProfile
WHERE name_us = 'Максим Петров';
