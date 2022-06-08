#a: {
    foo?: int
    bar?: string
    baz?: string
}


b: #a & {
    foo: 3
    baz?: _|_ // bottomであることを書くこともできる
}

//
//もしくは bazを消す
//b: #a & {
//    foo: 3
//}