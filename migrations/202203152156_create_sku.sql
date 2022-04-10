-- +migrate Up
CREATE TABLE `t_sku` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       spu_id INT UNSIGNED NOT NULL COMMENT "產品ID",
       title VARCHAR(256) NOT NULL COMMENT "標題",
       image JSON,
       price DECIMAL(10,2) UNSIGNED NOT NULL,
       param JSON,
       saleable BOOLEAN NOT NULL COMMENT "是否上架",
       valid BOOLEAN NOT NULL COMMENT "是否有效",
       create_time TIMESTAMP NOT NULL DEFAULT NOW() COMMENT "添加時間",
       last_update_time TIMESTAMP NOT NULL DEFAULT NOW() COMMENT "最後修改時間",
       INDEX idx_spu_id (spu_id),
       INDEX idx_saleable (saleable),
       INDEX idx_valid (valid)
) COMMENT "商品表";

-- +migrate Down
DROP TABLE `t_sku`;