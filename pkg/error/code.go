package helper

const (
	ErrorParameter      = 400
	ErrorAuthentication = 401
	ErrorUnAuthorize    = 403
	ErrorNotFound       = 404
	ErrorDuplicate      = 409
	ErrorUnknown        = 500
)

var ErrorMsgMap map[int]string = map[int]string{
	ErrorParameter:      "Wrong Parameter Error",
	ErrorAuthentication: "Wrong Authentication",
	ErrorUnAuthorize:    "Authentication Not Allow",
	ErrorNotFound:       "Resource Not Found",
	ErrorDuplicate:      "Resource Already Exist",
	ErrorUnknown:        "Server Unknown Error",
}
