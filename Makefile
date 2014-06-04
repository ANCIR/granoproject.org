
all: build

assets:
	pyenv/bin/pygmentize -S default -f html > static/style/pygments.css
	lessc -x -ru static/style/style.less static/style/style.css

build: assets
	jekyll build

install:
	virtualenv pyenv
	source pyenv/bin/activate
	pip install Pygments
	sudo npm install -g bower less
	bower install

serve:
	jekyll serve -w
