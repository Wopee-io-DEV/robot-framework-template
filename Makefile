install:
	python3 --version && \
	pwd && \
	ls -la && \
	python3 -m venv .venv && \
	ls -la && \
	source .venv/bin/activate && \
	pip install -r requirements.txt && \
	[ ! -e ".env" ] && cp .env.example .env || echo ".env file already exists"
test:
	source .venv/bin/activate && \
	robot tests/

clean:
	rm -rf reports/