all: package.json bin/tsc

TypeScript/:
	git clone https://github.com/Microsoft/TypeScript.git

.TypeScript-pull: TypeScript/
	cd TypeScript && git pull

TypeScript/built/: .TypeScript-pull
	cd TypeScript && jake

bin/: TypeScript/built
	cp -r TypeScript/built/local/ ./bin

bin/tsc: .TypeScript-pull bin/
	cp TypeScript/bin/tsc ./bin/ && chmod a+x ./bin/tsc

package.json: TypeScript
	node copy-package.js

clean:
	rm -rf TypeScript
	rm -rf bin
	rm -f package.json
