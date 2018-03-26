.PHONY = electron-builder release

electron-builder:
	yarn add electron-builder --dev

node_modules:
	npm install

all: electron-builder node_modules

clean:
	rm -rf dist
	rm -rf node_modules

dist:
	yarn dist

