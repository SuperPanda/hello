all: clean setup generate

generate: setup ./src/hello.c
	gcc ./src/hello.c -o ./bin/hi

clean:
	mkdir -p ./bin
	rm -r ./bin

setup: clean
	mkdir ./bin

