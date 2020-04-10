hugo:
	hugo

publish: hugo
	rsync --delete -aP ./public/* herr-felix.dev:/var/www/blog
