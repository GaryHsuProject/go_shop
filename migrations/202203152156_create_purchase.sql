-- +migrate Up
CREATE TABLE `t_purchase` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      sku_id INT UNSIGNED NOT NULL,
      num INT UNSIGNED NOT NULL COMMENT "數量",
      warehourse_id INT UNSIGNED NOT NULL COMMENT "倉庫ID",
      in_price DECIMAL(10,2) UNSIGNED NOT NULL COMMENT "採購價格",
      out_price DECIMAL(10,2) UNSIGNED COMMENT "建議零售價",
      buyer_id INT UNSIGNED NOT NULL,
      `status` TINYINT UNSIGNED NOT NULL COMMENT "狀態:1可用 2不可用",
      `create_time` TIMESTAMP NOT NULL DEFAULT NOW(),
      INDEX idx_sku_id (sku_id),
      INDEX idx_warehourse_id (warehourse_id),
      INDEX idx_buyer_id (buyer_id),
      INDEX idx_status (`status`),
      INDEX idx_create_time (create_time)
) COMMENT "採購表";

CREATE TABLE `t_productin` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      storekeeper_id INT UNSIGNED NOT NULL COMMENT "保管員ID",
      amount DECIMAL(15,2) UNSIGNED NOT NULL COMMENT "總金額",
      supplier_id INT UNSIGNED NOT NULL COMMENT "供應商ID",
      payment DECIMAL(15,2)  UNSIGNED NOT NULL COMMENT "實付金額",
      payment_type TINYINT UNSIGNED NOT NULL COMMENT "支付方式",
      invoice BOOLEAN NOT NULL COMMENT "是否開票",
      remark VARCHAR(256) COMMENT "備註",
      create_time TIMESTAMP NOT NULL DEFAULT NOW(),
      INDEX idx_storekeeper_id (storekeeper_id),
      INDEX idx_supplier_id (supplier_id),
      INDEX idx_payment_type (payment_type),
      INDEX idx_create_time (create_time)
)COMMENT "入庫表";


CREATE TABLE `t_purchase_productin` (
      productin_id INT UNSIGNED NOT NULL,
      purchase_id INT UNSIGNED NOT NULL,
      PRIMARY KEY (productin_id,purchase_id)
) COMMENT "採購入庫表";

-- +migrate Down
DROP TABLE `t_purchase`;
DROP TABLE `t_productin`;
DROP TABLE `t_purchase_productin`;