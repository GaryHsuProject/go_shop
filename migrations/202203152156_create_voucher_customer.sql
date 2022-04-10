-- +migrate Up
CREATE TABLE `t_voucher_customer` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       `customer_id` INT UNSIGNED NOT NULL COMMENT "顧客ID",
       `voucher_id` INT UNSIGNED NOT NULL COMMENT "優惠卷ID"
) COMMENT "優惠卷顧客表";

-- +migrate Down
DROP TABLE `t_voucher_customer`;