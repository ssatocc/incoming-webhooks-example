#!/bin/bash

isort send.py
black send.py
flake8 send.py
mypy send.py
