-- +migrate Up
CREATE TABLE `t_employee` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      wid VARCHAR(32) NOT NULL COMMENT "工號",
      ename VARCHAR(32) NOT NULL COMMENT "姓名",
      sex CHAR(1) NOT NULL COMMENT "性別",
      married BOOLEAN NOT NULL COMMENT "婚否",
      education TINYINT NOT NULL COMMENT "學歷: 1大學 2本科 3研究生 4博士生 5其他",
      tel CHAR(10) NOT NULL COMMENT "電話",
      email VARCHAR(256) COMMENT "郵箱",
      `address` VARCHAR(256) COMMENT "地址",
      job_id INT UNSIGNED NOT NULL COMMENT "職務ID",
      dept_id INT UNSIGNED NOT NULL COMMENT "部門ID",
      mgr_id INT UNSIGNED NOT NULL COMMENT "上司ID",
      hiredate DATE NOT NULL COMMENT "入職日期",
      termdate DATE COMMENT "離職日期",
      `status` TINYINT UNSIGNED NOT NULL COMMENT "狀態: 1在職 2休假 3離職 4死亡",
      INDEX idx_job_id(job_id),
      INDEX idx_dept_id(dept_id),
      INDEX idx_status(`status`),
      INDEX idx_mgr_id(mgr_id),
      INDEX idx_wid(wid),
      UNIQUE unq_wid(wid)
) COMMENT "員工表";

-- +migrate Down
DROP TABLE `t_employee`;