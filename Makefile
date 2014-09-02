
all: build

assets: _env
	_env/bin/pygmentize -S default -f html > static/style/pygments.css
	
build: assets
	jekyll build

_env:
	virtualenv _env
	_env/bin/pip install Pygments

install: _env

serve:
	jekyll serve -w

clean:
	rm -rf _env _site
