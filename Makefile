PY=python3
VENV=venv
BIN=$(VENV)/bin
PYTHON=$(BIN)/python


## Remove cached files and dirs from workspace
clean:
	@echo "cleaning workspace 🧹💨"
	@find . -type f -name "*.pyc" -delete
	@find . -type d -name "__pycache__" -delete
	@find . -type f -name "*.DS_Store" -delete


## Remove virtualenv directory
rm-venv:
	@rm -rf $(VENV)


## Set up virtualenv and install pre-commit
setup:
	@echo "\n\033[1;36m[1/3] Creating virtual environment 🏡 👾 🏡 \033[0m\n"
	$(PY) -m venv $(VENV)
	@echo "\n\033[1;36m[2/3] Upgrading pip and installing requirements 🔧 📦 🔧 \033[0m\n"
	$(PYTHON) -m pip install --upgrade pip
	$(BIN)/pip install -r requirements.txt
	@echo "\n\033[1;36m[3/3] Install pre-commit 🪝 🪝 🪝 \033[0m\n"
	$(BIN)/pre-commit install


## Format the codebase
format:
	@echo "\n\033[1;36m[1/4] Running pycln 👻 🧹 👻\033[0m\n"
	pycln . --config pyproject.toml -v
	@echo "\n\033[1;36m[2/4] Running isort 👀 👀 👀\033[0m\n"
	isort . -v
	@echo "\n\033[1;36m[3/4] Running black 🖤 🔥 🖤\033[0m\n"
	black  . -v
	@echo "\n\033[1;36m[4/4] Running flake8 🥶 🍦 🥶\033[0m\n"
	flake8 .


## Run linting
lint:
	@echo "\n\033[1;36m[1/4] Running pycln check 👻 🧹 👻\033[0m\n"
	pycln . --config pyproject.toml -vc
	@echo "\n\033[1;36m[2/4] Running isort check 👀 👀 👀\033[0m\n"
	isort . -vc
	@echo "\n\033[1;36m[3/4] Running black check 🖤 🔥 🖤\033[0m\n"
	black  . -v --check
	@echo "\n\033[1;36m[4/4] Running flake8 🥶 🍦 🥶\033[0m\n"
	flake8 .


# -------------------------------------------------------------------
# Self-documenting Makefile targets - https://git.io/Jg3bU
# -------------------------------------------------------------------

.DEFAULT_GOAL := help

help:
	@echo "Usage:"
	@echo "  make <target>"
	@awk '/^[a-zA-Z\-\_0-9]+:/ \
		{ \
			helpMessage = match(lastLine, /^## (.*)/); \
			if (helpMessage) { \
				helpCommand = substr($$1, 0, index($$1, ":")-1); \
				helpMessage = substr(lastLine, RSTART + 3, RLENGTH); \
				helpGroup = match(helpMessage, /^@([^ ]*)/); \
				if (helpGroup) { \
					helpGroup = substr(helpMessage, RSTART + 1, index(helpMessage, " ")-2); \
					helpMessage = substr(helpMessage, index(helpMessage, " ")+1); \
				} \
				printf "%s|  %-15s %s\n", \
					helpGroup, helpCommand, helpMessage; \
			} \
		} \
		{ lastLine = $$0 }' \
		$(MAKEFILE_LIST) \
	| sort -t'|' -sk1,1 \
	| awk -F '|' ' \
			{ \
			cat = $$1; \
			if (cat != lastCat || lastCat == "") { \
				if ( cat == "0" ) { \
					print "\nTargets:" \
				} else { \
					gsub("_", " ", cat); \
					printf "\n%s\n", cat; \
				} \
			} \
			print $$2 \
		} \
		{ lastCat = $$1 }'
	@echo ""
