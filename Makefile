SHELL := /bin/bash
deploy:
	python3 -m venv ./venv
	./venv/bin/pip install .
	./venv/bin/uvicorn cluster_control.main:app --host localhost --port 8000
