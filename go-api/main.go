package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func getEnv(key, defaultValue string) string {
	if value := os.Getenv(key); value != "" {
		return value
	}
	return defaultValue
}

func helloHandler(w http.ResponseWriter, r *http.Request) {
	queryName := r.URL.Query().Get("name")

	var message string
	if queryName == "" {
		message = "Hello, world!"
	} else {
		message = fmt.Sprintf("Hello, %s!", queryName)
	}

	w.Header().Set("Content-Type", "text/plain; charset=utf-8")
	fmt.Fprintln(w, message)
}

func main() {
	http.HandleFunc("/hello", helloHandler)

	port := getEnv("HTTP_PORT", "8080")
	fmt.Printf("Server starting on port %s\n", port)

	log.Fatal(http.ListenAndServe(":"+port, nil))
}
