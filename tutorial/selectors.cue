// selectorを使用してstructのフィールドにアクセスできる. 「.」表記
// これはフィールド名が妥当な識別しで計算されていない場合に限る

a: {
    b: 2
    "c-e": 5 * 2
}
v: a.b * 2
w: a["c-e"]