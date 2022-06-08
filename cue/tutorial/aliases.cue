// ユースケースとしてはシャドーフィールドへのアクセスを提供する(シャドーフィールドとは？)
// エイリアスは構造体のメンバーではなく、構造体内でのみ参照でき、出力には表示されない

let A = a  // a用のエイリアス
a: {
    d: 3
}
b: {
    a: {
        // A provides access to the outer "a" which would
        // otherwise be hidden by the inner one.
        c: A.d
    }
}