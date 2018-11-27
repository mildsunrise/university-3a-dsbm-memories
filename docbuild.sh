#!/bin/bash
cd "$(dirname "$0")"

p="$1"
rm -rq docbuild || true
mkdir -p docbuild && cd docbuild && \
  cp ../deps/* . && echo '\newcommand{\projectname}{'$p'}\input{../doc.tex}' > doc.tex && \
  latexmk -synctex=0 -interaction=nonstopmode -file-line-error -pdf -shell-escape doc.tex < /dev/null && \
  mv doc.pdf ../"$p"_G21_Mendez.pdf
