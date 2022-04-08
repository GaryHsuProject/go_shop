-- +migrate Up
CREATE TABLE `t_spu` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       title VARCHAR(256) NOT NULL COMMENT "標題",
       sub_title VARCHAR(256) COMMENT "副標題",
       category_id INT UNSIGNED NOT NULL COMMENT "分類ID",
       brand_id INT UNSIGNED NOT NULL COMMENT "品牌ID",
       spg_id INT UNSIGNED NOT NULL COMMENT "品類ID",
       saleable BOOLEAN NOT NULL COMMENT "是否上架",
       valid BOOLEAN NOT NULL COMMENT "是否有效",
       create_time TIMESTAMP NOT NULL DEFAULT NOW() COMMENT "添加時間",
       last_update_time TIMESTAMP NOT NULL DEFAULT NOW() COMMENT "最後修改時間",
       INDEX idx_brand_id (brand_id),
       INDEX idx_category_id (category_id),
       INDEX idx_spg_id (spg_id),
       INDEX idx_saleable (saleable),
       INDEX idx_valid (valid)
) COMMENT "產品表";

-- +migrate Down
DROP TABLE `t_spu`;