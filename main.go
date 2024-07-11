
package main

import (
	"io"
	"fmt"
	"net/http"
)

func index(w http.ResponseWriter, r *http.Request) {
	n, err := io.WriteString(w, "Full Cycle Rocks!!")
	if err != nil {
		panic(err)
	}

	fmt.Println(n)
}

func main() {
	http.HandleFunc("/", index)
	fmt.Println("Server is listening on port 9000...")
	http.ListenAndServe(":9000", nil)
}
