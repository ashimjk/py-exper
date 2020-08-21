install:
	pyinstaller --noconfirm --onefile --clean --distpath=target --workpath=/tmp --specpath=/tmp exec.py --name jv

clean-install:
	docker run --rm -v "/home/ashimjk/code/personal/py-exper:/src" progressoft/pyinstaller-alpine exec.py --name jv

update-requirement:
	pip freeze > requirements.txt

run:
	./target/jv

docker-build:
	docker build -t ashimjk/py .

docker-run:docker-build
	docker run --rm ashimjk/py | sh