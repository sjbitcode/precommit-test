#!/usr/bin/env bash

set -e

CYAN='\033[1;36m'
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "\n${CYAN}[1/4] Running pycln 👻 🧹 👻${NC}\n"
pycln . --config ../pyproject.toml -v

echo -e "\n${CYAN}[2/4] Running isort 👀 👀 👀${NC}\n"
isort . -v

echo -e "\n${CYAN}[3/4] Running black 🖤 🔥 🖤${NC}\n"
black ../ -v

echo -e "\n${CYAN}[4/4] Running flake8 🥶 🍦 🥶${NC}\n"
flake8 .
