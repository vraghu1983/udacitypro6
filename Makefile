install:
	pip install  --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv test_hello.py added 

lint:
	pylint --disable=R,C,W1203,bare-except --fail-under=6  app.py

all: install lint test