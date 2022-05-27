// 論理和はどのタイプでも機能する

floor : {
    level: int
    hasExit: bool
}


// floorに対する可能な値の制約を書いている
floor: {
    level: 0 | 1
    hasExit: true
} | {
    level: -1 | 2 | 3
    hasExit: false
}