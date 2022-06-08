package main

import (
	"fmt"
	"io"
)

type User struct {
	Name string
}

func main() {
	// 変数定義
	// var 変数名 型
	// var test_string string

	//structも同じで var 変数名 型
	p := struct {
		Name string
	}{
		Name: "test_struct",
	}
	fmt.Println(p)
	slice_func()
}

// 配列
// 要素の型は全て同じ
// 要素数が違えば別の型. goは固定長配列&要素数も型に含まれる
// 要素数は変更できない
// 型は型リテラルで記述することが多い

func array_func() {
	//ゼロ値で初期化
	var ns1 [5]int
	// 配列リテラルで初期化
	var ns2 = [5]int{1, 2, 3, 4, 5}
	// 要素数を値から推論。配列リテラルで書くときしか有効ではない
	ns3 := [...]int{1, 2, 3, 4, 4, 5}
	// ５番目が50, 10番目が100で他が0の要素すう11の配列
	ns4 := [...]int{5: 10, 10: 100}

	ns := [...]int{1, 2, 3, 4}
	fmt.Println(ns[3])

	fmt.Println(ns[1:3])

}

//　スライス

func slice_func() {
	//ゼロちはnill
	var ns1 []int
	//長さと容量をしてして初期化
	//各要素はゼロ値で初期化される
	ns1 = make([]int, 3, 10)

	//スライスリテラルで初期化
	//自動で配列が作られる
	var ns2 = []int{10, 20, 30, 40}

	// 5番目が50, 10番目が100で他が0の要素数11のスライス
	ns3 := []int{5: 50, 10: 100}
	ns4 := []int{0: 1, 9: 10}
	fmt.Println(ns4)

	//スライスの操作
	ns := []int{10, 20, 30, 40, 50}

	// appendの戻り値を必ず設定する。ns と ns1とで違うスライスになる可能性があるから
	ns1 = append(ns, 60, 70)
	//要素にアクセス
}

// ユーザ定義型
// typeで名前をつけて新しい型を定義する
// ユーザ定義型は型を定義していてそれがたまたまstructなだけ
// 文法: type 型名 基底型
// 特徴
// 基底型とユーザ定義型の相互キャストが可能
// ただ、キャストが可能なだけで演算は不可能
func struct_func() {
	type MyInt int
	type MyWriter io.Writer

	var n int = 10
	m := MyInt(n)
	n = int(m)
}

// switch
func switch_basic(arg string) string {
	switch arg {
	case "hello":
		return "hello"
	}

}
