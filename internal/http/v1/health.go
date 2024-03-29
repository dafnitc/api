package v1

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

type healthRoutes struct{}

func newHealthRoutes(handler *gin.RouterGroup) {
	r := &healthRoutes{}

	h := handler.Group("/health")

	h.GET("", r.get)
}

type HealthResponse struct {
	Status string `json:"status"`
}

func (r *healthRoutes) get(c *gin.Context) {
	c.JSON(http.StatusOK, HealthResponse{"ok"})
}
