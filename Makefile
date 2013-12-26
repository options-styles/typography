install: component.json
	component install --dev

build: index.scss
	sass index.scss > index.css && component build --dev && autoprefixer build/build.css

server:
	http-server

demo: install build server
	open http://localhost:8080/demo/index.html