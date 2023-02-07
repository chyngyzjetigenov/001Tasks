package main

import (
	"fmt"
	"net/http"
)

func Webserver(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World")
}

func main() {
	http.HandleFunc("/", Webserver)
	http.ListenAndServe(":8080", nil)
}
