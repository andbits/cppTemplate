@echo off
"Python" -m venv .virtualenv
.virtualenv\Scripts\pip config set global.index-url https://pypi.org/simple
.virtualenv\Scripts\pip config set global.extra-index-url https://pypi.org/simple
.virtualenv\Scripts\python -m pip install --upgrade pip
.virtualenv\Scripts\pip install -r requirements.txt
