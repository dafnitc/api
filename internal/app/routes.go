package server

import (
	"net/http"

	v1 "github.com/dafnitc/api/internal/http/v1"

	"github.com/gin-gonic/gin"
)

func (s *Server) RegisterRoutes() http.Handler {

	handler := gin.New()

	v1.NewRouter(handler)

	return handler
}
