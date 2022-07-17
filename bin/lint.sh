#!/usr/bin/env bash

set -e

CYAN='\033[1;36m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "\n${CYAN}[1/4] Running pycln check 👻 🧹 👻${NC}\n"
pycln . --config ../pyproject.toml -vc

echo -e "\n${CYAN}[2/4] Running isort check 👀 👀 👀${NC}\n"
isort . -vc

echo -e "\n${CYAN}[3/4] Running black check 🖤 🔥 🖤${NC}\n"
black ../ -v --check

echo -e "\n${CYAN}[4/4] Running flake8 🥶 🍦 🥶${NC}\n"
flake8 .
