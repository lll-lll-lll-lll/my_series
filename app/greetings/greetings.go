package greetings

import (
	"errors"
	"fmt"
	"math/rand"
	"time"
)


func Hello(name string) (string, error){ 
	if name == "" {
		return "", errors.New("empty name")
	}
	message := fmt.Sprintf(RandomMessage(), name)
	return message, nil
}


//map
func Hellos(names []string) (map[string]string, error) {
	messages := make(map[string]string)
	for _, name := range names{
		message, err := Hello(name)
		if err != nil {
			return nil, err
		}
		messages[name] = message
	}
	return messages, nil
} 

func init(){
	rand.Seed(time.Now().UnixNano())
}

func RandomMessage() string {
	// slice of message formats
	formats := []string{
		"hi, %v",
		"greate, %v",
		"hail, %v",
	}
	return formats[rand.Intn(len(formats))]
} 

