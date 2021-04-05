package mylib

import (
	"testing"
)

func Test_BasicChecks(t *testing.T) {
	t.Parallel()
	t.Run("Go can add", func(t *testing.T) {
		if "Hello, " + "Go" != "Hello, Go" {
			t.Fail()
		}
	})
}