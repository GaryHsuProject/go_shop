package user

import (
	"shop/dto"
	"shop/models"
	helper "shop/pkg/error"
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

func (u *UserService) Insert(req *dto.InsertUser) error {
	has, err := u.UserRepo.CheckExistByUsername(&models.User{Username: req.Username})
	if err != nil {
		return helper.NewCustomError(500, err, "Check user by username error", req)
	}
	if has {
		return helper.NewCustomError(409, nil, "User already Exist", req)
	}
	users := make([]*models.User, 0)
	user := &models.User{
		Username: req.Username,
		Password: req.Password,
		Status:   req.Status,
		RoleId:   req.RoleId,
	}
	users = append(users, user)
	if err := u.UserRepo.Insert(users); err != nil {
		return helper.NewCustomError(500, err, "Create user failed", req)
	}
	return nil
}
func (u *UserService) FindOne(*dto.FindOneByUser) (*dto.User, error) {
	return nil, nil
}
func (u *UserService) FindOneByUsername(*dto.FindOneByUser) (*dto.User, error) {
	return nil, nil
}
