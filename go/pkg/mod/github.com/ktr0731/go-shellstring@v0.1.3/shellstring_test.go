package shellstring

import (
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func Test_main(t *testing.T) {
	cases := []struct {
		in       string
		expected []string
		hasError bool
	}{
		{"foo", []string{"foo"}, false},
		{"foo bar", []string{"foo", "bar"}, false},
		{`"foo"`, []string{"foo"}, false},
		{`""`, []string{""}, false},
		{`''`, []string{""}, false},
		{`'' ""`, []string{"", ""}, false},
		{`"" ''`, []string{"", ""}, false},
		{`"foo bar"`, []string{"foo bar"}, false},
		{`"foo" "bar"`, []string{"foo", "bar"}, false},
		{`"foo""bar"`, []string{"foobar"}, false},
		{`'foo'`, []string{"foo"}, false},
		{`'foo bar'`, []string{"foo bar"}, false},
		{`'foo' 'bar'`, []string{"foo", "bar"}, false},
		{`'foo' 'bar'`, []string{"foo", "bar"}, false},
		{`'foo''bar'`, []string{"foobar"}, false},
		{`'"foo bar"'`, []string{`"foo bar"`}, false},
		{`'"'foo bar'"'`, []string{`"foo`, `bar"`}, false},
		{`''foo''`, []string{`foo`}, false},
		{`""foo""`, []string{`foo`}, false},
	}

	for _, c := range cases {
		t.Run(c.in, func(t *testing.T) {
			actual, err := Parse(c.in)
			if c.hasError {
				require.Error(t, err)
				return
			}
			require.NoError(t, err)
			assert.Exactly(t, c.expected, actual)
		})
	}
}
