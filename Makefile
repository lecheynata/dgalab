up:
	cd example-app && ./vendor/bin/sail up

populate_db:
	cd example-app && ./vendor/bin/sail artisan migrate
	cd example-app && ./vendor/bin/sail artisan db:seed --class=DatabaseSeeder
	cd example-app && ./vendor/bin/sail artisan db:seed --class=RegionSeeder

modules_clone:
	git clone https://github.com/lecheynata/dgalab.git svcustomers