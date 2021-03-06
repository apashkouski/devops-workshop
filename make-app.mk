USER = "$(shell id -u):$(shell id -g)"

app:
	docker-compose up

app-build:
	docker-compose build

development-setup-env:
	ansible-playbook ansible/development.yml -i ansible/development -vv

app-setup: development-setup-env app-build
	docker-compose run --user=$(USER) app pip install -r requirements.txt --user

app-bash:
	docker-compose run --user=$(USER) app bash
