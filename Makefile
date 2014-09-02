
all: build

assets: _env
	_env/bin/pygmentize -S default -f html > static/style/pygments.css
	
build: assets apidocs
	jekyll build

_env:
	virtualenv _env
	_env/bin/pip install Pygments

apidocs_install: _env
	rm -rf _env/src
	mkdir -p _env/src
	cd _env/src; git clone https://github.com/granoproject/grano.git
	_env/bin/pip install -r _env/src/grano/requirements.txt
	_env/bin/pip install -e _env/src/grano
	_env/bin/pip install sphinx

apidocs:
	cd _env/src/grano; git reset --hard HEAD; git pull
	_env/bin/pip install -r _env/src/grano/requirements.txt
	_env/bin/pip install -e _env/src/grano
	rm -rf _includes/apidocs
	_env/bin/sphinx-build -b html _env/src/grano/docs _includes/apidocs
	rm -rf _includes/apidocs/.doctrees _includes/apidocs/_modules
	rm -rf _includes/apidocs/_sources _includes/apidocs/_static
	rm -rf _includes/apidocs/.buildinfo _includes/apidocs/genindex.html
	rm -rf _includes/apidocs/search.html _includes/apidocs/searchindex.js
	rm -rf _includes/apidocs/objects.inv _includes/apidocs/index.html

install: _env apidocs_install

serve:
	jekyll serve -w

clean:
	rm -rf _env _site
