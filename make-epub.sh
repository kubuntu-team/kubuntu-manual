#!/bin/bash
# Make ePub script
# ---------------

make epub
git add build/epub
mv build/epub/KubuntuManual.epub build/epub/KubuntuManual-18.04.epub
