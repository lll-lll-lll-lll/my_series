package go_routine

import "fmt"

func main() {
	go func() {
		fmt.Println("別のゴールーチン")
	}()
	fmt.Println("main ゴールーチン")
}
