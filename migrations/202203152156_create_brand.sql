
CREATE TABLE `t_brand` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       `name` VARCHAR(256) NOT NULL COMMENT "品牌名稱",
       `image` VARCHAR(512) COMMENT "品牌圖片",
       `letter` CHAR(1) NOT NULL COMMENT "品牌首字母",
       UNIQUE KEY unique_name (`name`),
       INDEX idx_letter(`letter`)
) COMMENT "品牌表"