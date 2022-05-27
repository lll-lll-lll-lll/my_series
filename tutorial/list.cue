//リストはcue値の任意のシーケンスを定義する
// リストはclosedかopen
// IPをタイプuint8の4つの要素のリストとして定義する

import "list"

// uint型の要素を4つ持つことを示す
IP: list.Repeat([ uint8 ], 4)

PrivateIP: IP
// ...を使うことで定義してない要素の型を自動で生成する
PrivateIP: [10, ...uint8] |
    [192, 168, ...] |
    [172, >=16 & <=32, ...]

myIP: PrivateIP
myIP: [10, 2, 3, 4]

yourIP: PrivateIP
yourIP: [11, 1, 2, 3]