CC ?= cc
CFLAGS ?= -std=c11 -Wall -Wextra -Wpedantic -Werror -O2
BUILD_DIR := build
BIN := $(BUILD_DIR)/c-stakeholder
SRC := src/main.c

.PHONY: all build compiler-proof test clean

all: build

compiler-proof:
	@printf 'clang: '
	@clang --version | sed -n '1p'
	@printf 'cc: '
	@$(CC) --version | sed -n '1p'

build: $(BIN)

$(BIN): $(SRC)
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $(BIN) $(SRC)

test: build
	sh tests/test_cli.sh

clean:
	rm -rf $(BUILD_DIR)
