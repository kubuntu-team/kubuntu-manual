#!/bin/bash
# Make PDF script
# ---------------

make latexpdf
git add build/latex
mv build/latex/KubuntuManual.pdf build/latex/KubuntuManual-18.04.pdf
