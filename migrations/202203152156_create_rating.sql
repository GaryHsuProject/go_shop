-- +migrate Up
CREATE TABLE `t_rating` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      order_id INT UNSIGNED NOT NULL,
      sku_id INT UNSIGNED NOT NULL,
      img JSON,
      rating TINYINT UNSIGNED NOT NULL COMMENT "評分",
      `comment` VARCHAR(256),
      create_time TIMESTAMP NOT NULL DEFAULT NOW(),
      INDEX idx_order_id (order_id),
      INDEX idx_sku_id (sku_id),
      INDEX idx_create_time (create_time)
) COMMENT "評價表";

-- +migrate Down
DROP TABLE `t_rating`;