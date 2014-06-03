
all: build

build:
	lessc -x -ru static/style/style.less static/style/style.css


install:
	sudo npm install -g bower less
	bower install
