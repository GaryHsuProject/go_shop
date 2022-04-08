-- +migrate Up
CREATE TABLE `t_delivery` (
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      order_id INT UNSIGNED NOT NULL COMMENT "訂單編號",
      sku JSON NOT NULL COMMENT "商品內容",
      qa_id INT UNSIGNED NOT NULL COMMENT "品管員ID",
      de_id INT UNSIGNED NOT NULL COMMENT "發貨員ID",
      postid VARCHAR(32) NOT NULL COMMENT "快遞單號",
      price DECIMAL(10,2) UNSIGNED NOT NULL COMMENT "運費",
      ecp TINYINT UNSIGNED NOT NULL COMMENT "快遞公司編號",
      address_id INT UNSIGNED NOT NULL COMMENT "收貨地址ID",
      warehourse_id INT UNSIGNED NOT NULL COMMENT "倉庫ID",
      create_time TIMESTAMP NOT NULL DEFAULT NOW() COMMENT "創建時間",
      INDEX idx_order_id (order_id),
      INDEX idx_qa_id (qa_id),
      INDEX idx_de_id (de_id),
      INDEX idx_postid (postid),
      INDEX idx_warehouse_id (warehourse_id),
      INDEX idx_address_id (address_id),
      INDEX idx_ecp(ecp)
) COMMENT "快遞表";

-- +migrate Down
DROP TABLE `t_delivery`;