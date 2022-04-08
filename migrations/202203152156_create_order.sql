-- +migrate Up
CREATE TABLE `t_order` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       `code` VARCHAR(256) NOT NULL COMMENT "流水號",
       `type` TINYINT UNSIGNED NOT NULL COMMENT "訂單類型:1實體銷售,2網路銷售",
       shop_id INT UNSIGNED COMMENT "零售店ID",
       customer_id INT UNSIGNED COMMENT "會員ID",
       amount DECIMAL(10,2) UNSIGNED NOT NULL COMMENT "總金額",
       payment_type TINYINT UNSIGNED NOT NULL COMMENT "支付方式: 1 信用卡 2 LINEPAY 3 現金",
       `status` TINYINT UNSIGNED NOT NULL COMMENT "狀態:1 未付款 2 已付款 3 已發貨 4 已簽收",
       postage DECIMAL(10,2) UNSIGNED COMMENT "運費",
       `weight` INT UNSIGNED COMMENT "重量",
       voucher_id INT UNSIGNED COMMENT "優惠卷ID",
       create_time TIMESTAMP NOT NULL DEFAULT NOW() COMMENT "創建時間",
       INDEX idx_code(code),
       INDEX idx_customer_id(customer_id),
       INDEX idx_status(`status`),
       INDEX idx_create_time(create_time),
       INDEX idx_type(`type`),
       INDEX idx_shop_id(shop_id),
       UNIQUE unique_code (code)       
) COMMENT "訂單表";

-- +migrate Down
DROP TABLE `t_order`;