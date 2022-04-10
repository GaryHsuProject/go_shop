-- +migrate Up
CREATE TABLE `t_category` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       `name` VARCHAR(256) NOT NULL COMMENT "分類名稱",
       `parent_id` INT UNSIGNED COMMENT "上級分類ID",
       `if_parent` BOOLEAN NOT NULL COMMENT "是否有下級分類",
       `sort` INT UNSIGNED NOT NULL COMMENT "排名指數",
       INDEX `idx_parent_id` (`parent_id`),
       INDEX `idx_sort` (`sort`)
) COMMENT "分類表";

-- +migrate Down
DROP TABLE `t_category`;