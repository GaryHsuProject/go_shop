
CREATE TABLE `t_level` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       `level` VARCHAR(64) NOT NULL COMMENT "會員等級",
       discount DECIMAL(10,2) NOT NULL COMMENT "折扣"
) COMMENT "會員等級表";

CREATE TABLE `t_customer` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       username VARCHAR(256) NOT NULL COMMENT "會員帳號",
       `password` VARCHAR(512) NOT NULL COMMENT "會員密碼",
       `line` VARCHAR(256) COMMENT "line 帳號",
       tel CHAR(10) COMMENT "手機",
       `level_id` INT UNSIGNED COMMENT "會員等級",
       `create_time` TIMESTAMP NOT NULL DEFAULT NOW() COMMENT "新增時間",
       `last_update_time` TIMESTAMP NOT NULL DEFAULT NOW() COMMENT "最後修改時間",
       INDEX idx_username(username),
       UNIQUE unique_username(username)
) COMMENT "顧客表";