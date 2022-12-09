
deploy:
	zola build
	rsync -av ./public felix@herr-felix.dev:/var/www/felix/blog/
