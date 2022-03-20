package models

import "time"

type User struct {
	Id             int       `gorm:"id" json:"id"`
	Username       string    `gorm:"username" json:"username"`
	Password       string    `gorm:"password" json:"password"`
	RoleId         int       `gorm:"role_id" json:"role_id"`
	Status         int       `gorm:"status" json:"status"`
	CreateTime     time.Time `gorm:"create_time" json:"create_time"`
	LastUpdateTime time.Time `gorm:"last_update_time" json:"last_update_time"`
}
