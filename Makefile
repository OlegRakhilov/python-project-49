install:
	uv sync

run:
	uv run hexlet-python-package

test:
	uv run pytest

test-coverage:
	uv run pytest --cov=hexlet_python_package --cov-report xml

lint:
	uv run ruff check brain_games

check: test lint

build:
	uv build

.PHONY: install test lint selfcheck check build