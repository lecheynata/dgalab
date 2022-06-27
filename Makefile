up:
	cd example-app && ./vendor/bin/sail up

modules_clone:
	git clone https://github.com/lecheynata/dgalab.git svcustomers

modules_update:
	cd svcustomers && git fetch -p && git pull -r