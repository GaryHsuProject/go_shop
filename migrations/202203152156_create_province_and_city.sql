
CREATE TABLE `t_province` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       province VARCHAR(64) NOT NULL COMMENT "省份",
       UNIQUE unique_province (province)
) COMMENT "省份表";

CREATE TABLE `t_city` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       city VARCHAR(64) NOT NULL COMMENT "城市",
       province_id INT UNSIGNED NOT NULL COMMENT "省份ID"
) COMMENT "城市表";