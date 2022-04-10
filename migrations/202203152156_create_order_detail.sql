-- +migrate Up
CREATE TABLE `t_order_detail` (
       order_id INT UNSIGNED COMMENT "訂單ID",
       sku_id INT UNSIGNED COMMENT "sku ID",
       price DECIMAL(10,2) UNSIGNED COMMENT "商品原價格",
       actual_price DECIMAL(10,2) UNSIGNED NOT NULL COMMENT "實際購買價",
       Num INT UNSIGNED COMMENT "數量",
       PRIMARY KEY (order_id,sku_id)
) COMMENT "訂單詳情表";

-- +migrate Down
DROP TABLE `t_order_detail`;