package middleware

import (
	"encoding/json"
	"shop/driver"
	helper "shop/pkg/error"

	"github.com/gin-gonic/gin"
)

func HandleError() gin.HandlerFunc {
	return func(c *gin.Context) {
		c.Next()
		errs := c.Errors
		if len(errs) > 0 {
			for _, err := range errs {
				switch err.Err.(type) {
				case helper.CustomError:
					customErr := err.Err.(helper.CustomError)
					v, marshalErr := json.Marshal(customErr.Value)
					if marshalErr != nil {
						panic(marshalErr)
					}
					driver.Logger.Errorf("StatusCode: %d, Error: %s, PrivateError: %s, value: %s",
						customErr.StatusCode,
						customErr.Err.Error(),
						customErr.PrivateMsg,
						string(v),
					)
					c.AbortWithStatusJSON(customErr.StatusCode, customErr.NewResponseMsg())
				default:
					c.AbortWithStatusJSON(500, "Unknown Error Caused.")
				}
			}
		}
	}
}

func PanicHandler() gin.HandlerFunc {
	return func(c *gin.Context) {
		c.Next()
		defer func() {
			if err := recover(); err != nil {
				driver.Logger.Panic(err)
			}
		}()
	}
}
