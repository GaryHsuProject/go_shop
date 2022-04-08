-- +migrate Up
CREATE TABLE `t_backstock` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      order_id INT UNSIGNED NOT NULL COMMENT "訂單編號",
      sku JSON NOT NULL COMMENT "退貨商品",
      qa_id INT UNSIGNED NOT NULL COMMENT "品管員ID",
      payment DECIMAL(10,2) UNSIGNED NOT NULL COMMENT "退款金額",
      payment_type TINYINT UNSIGNED NOT NULL COMMENT "退款方式: 1信用卡 2 現金",
      `status` TINYINT UNSIGNED NOT NULL COMMENT "狀態: 1退貨成功 2無法退貨",
      create_time TIMESTAMP NOT NULL DEFAULT NOW() COMMENT "創建時間",
      INDEX idx_order_id (order_id),
      INDEX idx_qa_id (qa_id),
      INDEX idx_status(`status`)
) COMMENT "退貨表";

-- +migrate Down
DROP TABLE `t_backstock`;