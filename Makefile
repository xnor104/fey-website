all: css static html

setup:
	@mkdir -p public

html: setup
	@xmq index.xmq > public/index.html

static: setup
	@rsync -aL static/ public/

css: setup
	@sass --no-source-map sass/:public/
