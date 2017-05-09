package a_test

import (
	"testing"

	"github.com/boyvinall/go-vendor-test/pkg/a"
	"github.com/stretchr/testify/assert"
)

func TestHello(t *testing.T) {
	assert := assert.New(t)

	s := a.Hello()
	assert.Equal("hello", s)
}
