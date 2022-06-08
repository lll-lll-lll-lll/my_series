import "strings"

#a: ["test_1", "test_2", "test_3"]

for k, v in #a {
    "\(strings.ToLower(v))": {
        pos: k + 1
        name: v
        nameLen: len(v)
    } 
} 