LESSC = lessc
COFFEE = coffee
JADE = jade
DEBUG = True
LESS_FILES = ../public/css/footer.less
CSS_FILES = $(LESS_FILES:.less=.css)

ifeq ($(DEBUG),True)
	LESSC=lessc
else
	LESSC=lessc -x
endif

all: clean build

clean:
	rm -rf ../views/*.html
	rm -rf ../views/partials/*.html
	rm -rf ../*.js
	rm -rf ../routes/*.js
	rm -rf ../config/*.js
	rm ../config/runtime.json
	rm -rf ../public/js/angularjs/*.js

build:	coffee jade less

coffee:
	$(COFFEE) --compile ../

jade:
	$(JADE) --pretty ../

less:
	$(CSS_FILES)

%.css: %.less
	$(LESSC) $< > $@