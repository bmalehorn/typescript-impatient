all: package.json bin

TypeScript:
	git clone https://github.com/Microsoft/TypeScript.git

TypeScript/built: TypeScript
	cd TypeScript && jake

bin: TypeScript/built
	cp -r TypeScript/built/local/ ./bin

package.json: TypeScript
	node copy-package.js

clean:
	rm -rf TypeScript
	rm -rf bin
	rm -f package.json
