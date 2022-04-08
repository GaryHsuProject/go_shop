-- +migrate Up
CREATE TABLE `t_voucher` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       deno DECIMAL(10,2) UNSIGNED NOT NULL COMMENT "價值",
       `condition` DECIMAL(10,2) UNSIGNED NOT NULL COMMENT "滿多少錢可以使用",
       `start_date` DATE COMMENT "起始日期",
       `end_date` DATE COMMENT "結束日期",
       max_num INT COMMENT "最大數量"
) COMMENT "優惠卷表";

-- +migrate Down
DROP TABLE `t_voucher`;