.PHONY: all $(MAKECMDGOALS)

run:
	docker run --rm --volume `pwd`:/opt/app --env PYTHON_PATH=/opt/app -w /opt/app python:3.6-slim python3 main.py palabras.txt yes

# Comando para ejecutar localmente sin Docker
run-local:
	python3 main.py palabras.txt yes