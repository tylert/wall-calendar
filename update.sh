#!/usr/bin/env bash

make GEN_LANG=en
make GEN_LANG=fr

# XXX FIXME XXX Do this with the makefile instead

if [ -f build/junior_en.pdf ]; then
  mv build/junior_en.pdf junior_2016_en.pdf
fi

if [ -f build/junior_fr.pdf ]; then
  mv build/junior_fr.pdf junior_2016_fr.pdf
fi

if [ -f build/letter_2016_en.pdf ]; then
  mv build/letter_2016_en.pdf letter_2016_en.pdf
fi

if [ -f build/letter_2016_fr.pdf ]; then
  mv build/letter_2016_fr.pdf letter_2016_fr.pdf
fi

make clean
