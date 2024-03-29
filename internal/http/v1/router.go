package v1

import "github.com/gin-gonic/gin"

func NewRouter(handler *gin.Engine) {
	h := handler.Group("/")
	{
		newHealthRoutes(h)
	}
}
