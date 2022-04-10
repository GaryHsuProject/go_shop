-- +migrate Up
CREATE TABLE `t_brand_category` (
       `brand_id` INT UNSIGNED NOT NULL,
       `category_id` INT UNSIGNED NOT NULL,
       PRIMARY KEY (category_id,brand_id)
) COMMENT "品牌分類表";

-- +migrate Down
DROP TABLE `t_brand_category`;