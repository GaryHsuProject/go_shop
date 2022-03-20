package helper

type CustomError struct {
	Err        error
	Msg        string
	PrivateMsg string
	StatusCode int
	Value      interface{}
}

func NewCustomError(statusCode int, err error, privateMsg string, value interface{}) *CustomError {
	return &CustomError{
		StatusCode: statusCode,
		Err:        err,
		PrivateMsg: privateMsg,
		Value:      value,
	}
}

func (c CustomError) Error() string {
	return c.Msg
}

func (c *CustomError) NewResponseMsg() string {
	if val, ok := ErrorMsgMap[c.StatusCode]; !ok {
		return ErrorMsgMap[ErrorUnknown]
	} else {
		return val
	}
}
