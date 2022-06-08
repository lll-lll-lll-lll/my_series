// structはopenな状態とclosedな状態がある
// closedな状態のstructは許可された定義のフィールドを持つstructのみマージされる
// つまり、structを閉じることは他の全ての値が未定義であることが必要


a: close({
    field: int
    })

b : a & {
    feild: 2
}

// cue eval -i struct.cue
// 実行するとfeildは許されていないことが表示される