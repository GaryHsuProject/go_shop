-- +migrate Up
CREATE TABLE `t_spec_param` (
       id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
       spg_id INT UNSIGNED NOT NULL COMMENT "品類編號",
       spp_id INT UNSIGNED NOT NULL COMMENT "參數編號",
       `name` VARCHAR(256) NOT NULL COMMENT "參數名稱",
       `numeric` BOOLEAN NOT NULL COMMENT "是否為數字參數",
       unit VARCHAR(256) COMMENT "單位",
       generic BOOLEAN NOT NULL COMMENT "是否為通用參數",
       searching BOOLEAN NOT NULL COMMENT "是否用於通用搜索",
       segements VARCHAR(256) COMMENT "參數值",
       INDEX idx_spg_id(`spg_id`),
       INDEX idx_spp_id(`spp_id`)
) COMMENT "參數表";

-- +migrate Down
DROP TABLE `t_spec_param`;