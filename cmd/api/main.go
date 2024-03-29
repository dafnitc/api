package main

import (
	server "github.com/dafnitc/api/internal/app"
)

func main() {

	server := server.NewServer()

	err := server.ListenAndServe()
	if err != nil {
		panic("cannot start server")
	}
}
