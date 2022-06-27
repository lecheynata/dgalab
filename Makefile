up:
	cd svcustomers && ./vendor/bin/sail up

populate_db:
	cd svcustomers && ./vendor/bin/sail artisan migrate
	cd svcustomers && ./vendor/bin/sail artisan db:seed --class=DatabaseSeeder

repopulate_db:
	cd svcustomers && ./vendor/bin/sail artisan db:fresh
	cd svcustomers && ./vendor/bin/sail artisan db:seed --class=DatabaseSeeder

modules_clone:
	git clone https://github.com/lecheynata/dgalab.git svcustomers

modules_update:
	cd svcustomers && git fetch && git pull