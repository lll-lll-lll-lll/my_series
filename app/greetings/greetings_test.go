package greetings

import (
	"testing"
	"regexp"
)

// testHelloName calls greetings.Hello with a name, checking for a valid return value

func TestHelloName(t *testing.T) {
	name := "shunpei"
	want := regexp.MustCompile(`\b` + name + `\b`)
	msg, err := Hello("shunpei")
	if !want.MatchString(msg) || err != nil {
		t.Fatalf(`Hello("shunpei") = %q, %v, want match for %#q, nul`, msg, err, want)
	}
}

func TestHelloEmpty(t *testing.T){
	msg, err := Hello("")
	if  msg != "" || err == nil {
		t.Fatalf(`Hello("") = %q, %v, want "", error`, msg, err)
	}
}

