-- +migrate Up
CREATE TABLE `t_warehouse` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       city_id INT UNSIGNED NOT NULL COMMENT "城市ID",
       `address` VARCHAR(256) NOT NULL COMMENT "地址",
       tel VARCHAR(64) NOT NULL COMMENT "電話",
       INDEX idx_city_id (city_id)
) COMMENT "倉庫表";

CREATE TABLE `t_warehourse_sku` (
       warehourse_id INT UNSIGNED COMMENT "倉庫ID",
       sku_id INT UNSIGNED COMMENT "商品ID",
       num INT UNSIGNED COMMENT "庫存數量",
       unit VARCHAR(16) NOT NULL COMMENT "庫存單位",
       PRIMARY KEY (warehourse_id,sku_id)
) COMMENT "倉庫商品庫存表";

-- +migrate Down
DROP TABLE `t_warehouse`;
DROP TABLE `t_warehourse_sku`;