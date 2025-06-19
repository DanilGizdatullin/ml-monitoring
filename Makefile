.PHONY: format lint test
format:
	ruff format src/ tests/

lint:
	ruff format --check src/ tests/
	ruff check --fix src/ tests/
	pyright src/

test:
	pytest tests
