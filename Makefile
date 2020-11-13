.PHONY: install-poetry
install-poetry:
	curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3

.PHONY: setup
setup:
	 poetry install
	 poetry run python3 manage.py migrate

.PHONY: run
run:
	poetry run python3 manage.py runserver
