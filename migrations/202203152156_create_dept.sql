-- +migrate Up
CREATE TABLE `t_dept` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      `dname` VARCHAR(64) NOT NULL COMMENT "部門名稱",
      UNIQUE unique_dname(dname)
) COMMENT "部門表";

-- +migrate Down
DROP TABLE `t_dept`;