build:
	cd svcustomers && cp .env.example .env
	cd svcustomers && composer install

up:
	cd svcustomers && ./vendor/bin/sail up -d

down:
	cd svcustomers && ./vendor/bin/sail stop

restart:
	cd svcustomers && ./vendor/bin/sail stop
	cd svcustomers && ./vendor/bin/sail up -d

populate_db:
	cd svcustomers && ./vendor/bin/sail artisan migrate
	cd svcustomers && ./vendor/bin/sail artisan db:seed --class=DatabaseSeeder

repopulate_db:
	cd svcustomers && ./vendor/bin/sail artisan migrate:fresh
	cd svcustomers && ./vendor/bin/sail artisan db:seed --class=DatabaseSeeder

modules_clone:
	git clone https://github.com/lecheynata/gdalab-customers.git svcustomers

modules_update:
	cd svcustomers && git fetch && git pull