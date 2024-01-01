install:
	pip install --upgrade pip &&\
	pip install -r ./requirements.txt

format: 
	black *.py

lint:
	pylint --disable=R,C main.py

# TODO
test: 
	echo "test"

venv-python:
	python -m venv .venv

venv-conda:
	conda create -p .venv python==3.11 -y

activate-conda:
	conda activate .venv/

upgrade-pip:
	python.exe -m pip install --upgrade pip

all: install lint test
