-- +migrate Up
CREATE TABLE `t_spec_group` (
        id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
        spg_id INT UNSIGNED NOT NULL COMMENT "品類編號",
        `name` VARCHAR(256) NOT NULL COMMENT "品類名稱",
        UNIQUE INDEX `unique_spg_id` (`spg_id`),
        UNIQUE INDEX `unique_name` (`name`),
        INDEX `idx_spg_id` (`spg_id`)
) COMMENT "品類表";

-- +migrate Down
DROP TABLE `t_spec_group`;