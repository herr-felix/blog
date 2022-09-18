
deploy:
	zola build
	rsync -av --rsync-path=openrsync ./public felix@herr-felix.dev:/var/www/htdocs/blog/
