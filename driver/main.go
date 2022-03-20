package driver

import (
	"shop/config"

	"github.com/spf13/viper"
)

var GlobalConfig config.ServerConfig

func Init() {
	v := viper.New()
	v.SetConfigFile("./driver/configs.yaml")
	err := v.ReadInConfig()
	if err != nil {
		panic("Read config file error, err:" + err.Error())
	}
	if err := v.Unmarshal(&GlobalConfig); err != nil {
		panic(err)
	}
}
