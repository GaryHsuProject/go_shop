package driver

import (
	"fmt"
	"sync"

	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

var once sync.Once

func InitGorm() *gorm.DB {
	var db *gorm.DB
	var err error
	dsn := fmt.Sprintf("%s:%s@tcp(%s:%d)/%s?charset=utf8mb4&parseTime=True&loc=Local",
		GlobalConfig.MysqlConfig.Username,
		GlobalConfig.MysqlConfig.Password,
		GlobalConfig.MysqlConfig.Host,
		GlobalConfig.MysqlConfig.Port,
		GlobalConfig.MysqlConfig.Name,
	)
	once.Do(func() {
		db, err = gorm.Open(mysql.Open(dsn), &gorm.Config{})
		if err != nil {
			panic(err)
		}
	})
	return db
}
