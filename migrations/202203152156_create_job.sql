CREATE TABLE `t_job` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      `job` VARCHAR(64) NOT NULL COMMENT "職位名稱",
      UNIQUE unique_job(job)
) COMMENT "職位表";