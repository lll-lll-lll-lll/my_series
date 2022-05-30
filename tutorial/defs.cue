// Definitionは「#」「_#」で定義される
// 具体的な値に変換されるときに表示されず、値を検証できるスキーマを定義するために使用する
// Definitionに定義されたstructはデフォルトでclosedされているので、定義されていないフィールドを定義しようとするとエラーになる


msg: "Hello \(#Name)!"

#Name: string | *"wolrd"

a: #Name & "test"

#A: {
    field: int
}

b:   #A & { field: 3 }
// fieldで定義されていないのでエラー
// err: #A & { feild: 3 }