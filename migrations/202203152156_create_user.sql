CREATE TABLE `t_user` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      username VARCHAR(256) NOT NULL COMMENT "用戶名",
      `password` VARCHAR(256) NOT NULL COMMENT "密碼",
      emp_id INT UNSIGNED NOT NULL COMMENT "員工ID",
      role_id INT UNSIGNED NOT NULL COMMENT "角色ID",
      `status` TINYINT UNSIGNED NOT NULL COMMENT "1:可用 2不可用",
      `create_time` TIMESTAMP NOT NULL DEFAULT NOW(),
      `last_update_time` TIMESTAMP NOT NULL DEFAULT NOW() COMMENT "最後修改時間",
      UNIQUE unique_username(username),
      INDEX idx_username(username),
      INDEX idx_emp_id(emp_id),
      INDEX idx_role_id(role_id),
      INDEX idx_status(`status`)
) COMMENT "用戶表";

ALTER TABLE `t_user` DROP COLUMN `emp_id`;