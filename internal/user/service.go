package user

import (
	"shop/dto"
)

type Service interface {
	Insert(*dto.InsertUser) error
	FindOne(*dto.FindOneByUser) (*dto.User, error)
	FindOneByUsername(*dto.FindOneByUser) (*dto.User, error)
}

type UserService struct {
	UserRepo Repository
}

func NewUserService(userRepo Repository) Service {
	return &UserService{UserRepo: userRepo}
}

func (u *UserService) Insert(*dto.InsertUser) error {
	return nil
}
func (u *UserService) FindOne(*dto.FindOneByUser) (*dto.User, error) {
	return nil, nil
}
func (u *UserService) FindOneByUsername(*dto.FindOneByUser) (*dto.User, error) {
	return nil, nil
}
