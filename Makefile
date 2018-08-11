.PHONY = electron-builder

all: electron-builder node_modules dist

electron-builder:
	yarn add electron-builder --dev

node_modules:
	npm install

clean:
	rm -rf dist
	rm -rf node_modules

dist:
	yarn dist

