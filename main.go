package main

import (
	"fmt"
	"shop/driver"

	"github.com/gin-gonic/gin"
)

func main() {
	engine := gin.Default()
	driver.Init()
	engine.Run(fmt.Sprintf(":%d", driver.GlobalConfig.Port))
}
