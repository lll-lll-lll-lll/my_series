// 参照先は閉じたスコープ内ではそのスコープ内を優先して参照する
// もし参照先が同じフィールドにない場合は外部の一番最上位にあるものを参照するかもしれない(may)

v: 1
a: {
    v: 2
    b: v // matches the inner v
}
a: {
    c: v // matches the top-level v
}
b: v
