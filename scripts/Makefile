# Executable files
LESSC := ../node_modules/less-middleware/node_modules/.bin/lessc
COFFEE := ../node_modules/.bin/coffee
JADE := ../node_modules/.bin/jade

# Compress executable + expect output dir
COMPRESS := uglifyjs -o

HTML_FILES = $(shell find .. -wholename '../views/*.html')
JS_FILES = $(shell find .. -wholename '../*.js' ! -wholename '../public/*' ! -wholename '../node_modules/*' ! -wholename '../test/lib/angular/*')
COMPRESSJS_FILES = $(shell find .. -wholename '../angularjs/*.js')
LESS_FILES = $(shell find .. -wholename '../public/css/*.less')

# Marco: gets files from LESS_FILES, replace .less with .css and run %.css: %.less target
CSS_FILES := $(LESS_FILES:.less=.css)

all: clean build

clean:
	@printf 'Removing html files...\n'
	@rm -fv $(HTML_FILES)
	@printf '\nRemoving js files...\n'
	@rm -fv $(JS_FILES)
	@printf '\nRemoving css files...\n'
	@rm -fv $(CSS_FILES)
	@printf '\n'
# Might not want to delete this file if we need to pass jade functionality to client-side
	@rm -fv ../config/runtime.json

build:	coffee jade less

# Production = all + compression to css and js files
production: clean init build compressjs

# This will compress css files when less target is ran
init:
LESSC := $(LESSC) --compress

coffee:
	$(COFFEE) --compile ..
	@find .. -wholename '../*.js' ! -wholename '../node_modules/*'
	@printf '\n'

# Whitespaces generated with --pretty will be omitted by express.js when deliverying content
jade:
	$(JADE) --pretty ../views

less: $(CSS_FILES)
	@printf '\n'

# Concatenates js files into one huge minified js
compressjs:
	cat $(COMPRESSJS_FILES) | $(COMPRESS) ../angularjs/app.min.js

# $< = source, $@ = target
%.css: %.less
	$(LESSC) $< > $@

.PHONY: all