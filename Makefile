.PHONY: install-poetry
install-poetry:
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3

.PHONY: setup
setup: migrate
	 poetry install

.PHONY: run
run:
	poetry run python3 manage.py runserver

.PHONY: migrate
migrate:
	poetry run python3 manage.py migrate

.PHONY: create_admin
create_admin:
	poetry run python3 manage.py createsuperuser
