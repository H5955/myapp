package shellstring

import (
	"errors"
	"fmt"
)

func Parse(in string) ([]string, error) {
	var (
		stack []rune
		out   []string
	)

	var needCloseDoubleQuote, needCloseSingleQuote bool
	s := make([]rune, 0, len(in))
	for i, r := range in {
		switch r {
		case '\'':
			if needCloseSingleQuote {
				if stack[len(stack)-1] != '\'' {
					return nil, errors.New("open single quote missing")
				}
				stack = stack[:len(stack)-1]
				needCloseSingleQuote = false

				// if next char is space, split word
				if len(in)-1 > i+1 && in[i+1] == ' ' {
					out = append(out, string(s))
					s = nil
				} else if len(stack) == 0 && len(s) == 0 && (len(in)-1 > i+1 && in[i+1] == ' ' || len(in)-1 == i) {
					out = append(out, "")
				}
			} else {
				if len(stack) == 0 {
					stack = append(stack, '\'')
					needCloseSingleQuote = true
				} else {
					s = append(s, r)
				}
			}
		case '"':
			if needCloseDoubleQuote {
				if stack[len(stack)-1] != '"' {
					return nil, errors.New("open double quote missing")
				}
				stack = stack[:len(stack)-1]
				needCloseDoubleQuote = false
				// if next char is space, split word
				if len(in)-1 > i+1 && in[i+1] == ' ' {
					out = append(out, string(s))
					s = nil
				} else if len(stack) == 0 && len(s) == 0 && (len(in)-1 > i+1 && in[i+1] == ' ' || len(in)-1 == i) {
					out = append(out, "")
				}
			} else {
				if len(stack) == 0 {
					stack = append(stack, '"')
					needCloseDoubleQuote = true
				} else {
					s = append(s, r)
				}
			}
		case ' ':
			// out of quote
			if len(stack) == 0 {
				if len(s) != 0 {
					out = append(out, string(s))
					s = nil
				}
			} else {
				s = append(s, r)
			}
		default:
			s = append(s, r)
		}
	}
	if len(stack) != 0 {
		return nil, fmt.Errorf("corrensponding symbol missing: %s", string(stack))
	}
	if len(s) != 0 {
		out = append(out, string(s))
	}
	return out, nil
}
