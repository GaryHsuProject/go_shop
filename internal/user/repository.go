package user

import (
	"shop/models"

	"gorm.io/gorm"
)

type Repository interface {
	Insert([]*models.User) error
	FindOne(*models.User) (*models.User, error)
	CheckExistByUsername(*models.User) (bool, error)
}

type UserRepository struct {
	orm *gorm.DB
}

func NewUserRepository(orm *gorm.DB) Repository {
	return &UserRepository{orm: orm}
}

func (u *UserRepository) Insert(users []*models.User) error {
	if err := u.orm.Select("role_id,status").Create(&users).Error; err != nil {
		return err
	}
	return nil
}
func (u *UserRepository) FindOne(user *models.User) (*models.User, error) {
	if err := u.orm.Select("status,role_id").First(&user).Error; err != nil {
		return nil, err
	}
	return user, nil
}

func (u *UserRepository) CheckExistByUsername(user *models.User) (bool, error) {
	result := u.orm.Find(&user)
	if result.Error != nil {
		return false, result.Error
	}
	if result.RowsAffected != 0 {
		return true, nil
	}
	return false, nil
}
