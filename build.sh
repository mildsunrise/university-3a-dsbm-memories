#!/bin/bash
cd "$(dirname "$0")"
mkdir -p build && cd build && \
  cp ../deps/* . && \
  latexmk -synctex=0 -interaction=nonstopmode -file-line-error -pdf -shell-escape ../main.tex < /dev/null
