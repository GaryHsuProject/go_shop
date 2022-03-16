CREATE TABLE `t_supplier` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      `code` VARCHAR(256) NOT NULL COMMENT "供應商編號",
      `name` VARCHAR(256) NOT NULL COMMENT "供應商名稱",
      `type` INT UNSIGNED NOT NULL COMMENT "類型: 1廠家2代理商3個人",
      link_man VARCHAR(256) NOT NULL COMMENT "聯絡人",
      tel VARCHAR(32) NOT NULL,
      `address` VARCHAR(256) NOT NULL,
      bank_name VARCHAR(256) COMMENT "開戶銀行名稱",
      bank_account VARCHAR(256) COMMENT "開戶銀行帳號",
      `status` TINYINT UNSIGNED NOT NULL COMMENT "狀態:1可用 2不可用",
      INDEX idx_code(`code`),
      INDEX idx_type(`type`),
      INDEX idx_status(`status`),
      UNIQUE unique_code (`code`)
) COMMENT "供應商表";

CREATE TABLE `t_supplier_sku` (
      supplier_id INT UNSIGNED NOT NULL,
      sku_id INT UNSIGNED NOT NULL,
      PRIMARY KEY (supplier_id,sku_id) 
)COMMENT "供應商商品表"