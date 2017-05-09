export GOPATH:=$(realpath $(shell pwd)/../../../..)

# The first target defined is the default if no target is
# specified on the command line.  Make sure this doesn't
# take too long to run, so that people will run it on every
# build.
.PHONY: fast
fast: build coverage-short lint-fast

.PHONY: all build
all: build coverage lint-full

build: install

# probably not needed
export GOROOT:=/usr/local/go

GOMAKE:=gopkg.in/make.v3
-include $(GOPATH)/src/$(GOMAKE)/batteries.mk
$(GOPATH)/src/$(GOMAKE)/batteries.mk:
	go get $(GOMAKE)