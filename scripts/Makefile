# Executable files
LESSC = lessc
COFFEE = coffee
JADE = jade

# Compress executable + expect output dir
COMPRESS = uglifyjs -o

HTML_FILES = $(shell find .. -wholename '../views/*.html')
JS_FILES = $(shell find .. -wholename '../*.js' ! -wholename '../node_modules/*')
COMPRESSJS_FILES = $(shell find .. -wholename '../public/js/angularjs/*.js')
LESS_FILES = $(shell find .. -wholename '../public/css/*.less')

# Marco: gets files from LESS_FILES, replace .less with .css and run %.css: %.less target
CSS_FILES = $(LESS_FILES:.less=.css)

all: clean build

clean:
	rm -f $(HTML_FILES)
	rm -f $(JS_FILES)
	rm -f $(CSS_FILES)

	# Might not want to delete this file if we need to pass jade functionality to client-side
	rm -f ../config/runtime.json

build:	coffee jade less

# Production = all + compression to css and js files
production: init all compressjs

# This will compress css files when less target is ran
init:
LESSC = lessc -x

coffee:
	$(COFFEE) --compile ..

# Whitespaces generated with --pretty will be omitted by express.js when deliverying content
jade:
	$(JADE) --pretty ../views

less: $(CSS_FILES)

# Concatenates js files into one huge minified js
compressjs:
	cat $(COMPRESSJS_FILES) | $(COMPRESS) ../public/js/angularjs/app.min.js

# $< = source, $@ = target
%.css: %.less
	$(LESSC) $< > $@

.PHONY: all