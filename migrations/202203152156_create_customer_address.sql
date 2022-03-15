
CREATE TABLE `t_customer_address` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       customer_id INT UNSIGNED NOT NULL COMMENT "用戶ID",
       `name` VARCHAR(256) NOT NULL COMMENT "收貨人姓名", 
       tel CHAR(10) COMMENT "手機",
       `address` VARCHAR(256) NOT NULL COMMENT "收貨地址",
       prime BOOLEAN NOT NULL COMMENT "是否為默認地址",
       INDEX idx_customer_id(customer_id)
) COMMENT "用戶收貨地址表";