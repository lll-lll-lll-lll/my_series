package main

import (
	"fmt"
)

func main() {
	var s string = "hello"
	fmt.Println(s)

	// 複数の値を同時に入力
	var t, r bool = true, false
	fmt.Print(t, r)

	//異なる方をまとめて定義する方法
	var (
		a string = "helo"
		h int64  = 1
	)
	fmt.Println(a, h)
	fmt.Printf("%T\n", h)
	fmt.Printf("%T\n", int32(h))
}
