install:
	pip install --upgrade pip &&\
		pip install -r requirement.txt

test:
	python -m pytest -vv hello_test.py

format:
	black *.py


lint:
	pylint --disable=R,C hello.py
	
all: install lint test