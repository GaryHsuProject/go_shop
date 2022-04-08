-- +migrate Up
CREATE TABLE `t_role` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      role VARCHAR(32) NOT NULL COMMENT "角色名稱",
      UNIQUE unique_role (role)
) COMMENT "角色表";

-- +migrate Down
DROP TABLE `t_role`;