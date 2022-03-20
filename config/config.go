package config

type ServerConfig struct {
	Port        int         `mapstructure:"port"`
	MysqlConfig MysqlConfig `mapstructure:"mysql"`
}

type MysqlConfig struct {
	Name     string `mapstructure:"name"`
	Host     string `mapstructure:"host"`
	Port     int    `mapstructure:"port"`
	Username string `mapstructure:"username"`
	Password string `mapstructure:"password"`
}
