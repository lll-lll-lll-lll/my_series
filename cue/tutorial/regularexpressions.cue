// 正規表現の方法
// a =~ b はaとbが一致している場合にtrueを返す
a: "foo bar" =~ "foo [a-z]{3}"
b: "maze" !~ "^[a-z]{3}$"

c: =~"^[a-z]{3}$" // any string with lowercase ASCII of length 3

d: c
d: "foo"

e: c
e: "foo bar" // eは3文字以内ではないのでエラー