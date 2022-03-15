
CREATE TABLE `t_shop` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       city_id INT UNSIGNED NOT NULL COMMENT "城市ID",
       `address` VARCHAR(256) NOT NULL COMMENT "地址",
       tel VARCHAR(64) NOT NULL COMMENT "電話",
       INDEX idx_city_id (city_id)
) COMMENT "商店表";

CREATE TABLE `t_shop_sku` (
       shop_id INT UNSIGNED COMMENT "商店ID",
       sku_id INT UNSIGNED COMMENT "商品ID",
       num INT UNSIGNED COMMENT "庫存數量",
       unit VARCHAR(16) NOT NULL COMMENT "庫存單位",
       PRIMARY KEY (shop_id,sku_id)
) COMMENT "商店商品庫存表";