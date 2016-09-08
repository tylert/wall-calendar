#!/usr/bin/env bash

YEAR=$(date +%Y)

make GEN_LANG=en
make GEN_LANG=fr

if [ -f build/junior_en.pdf ]; then
  mv build/junior_en.pdf junior_en.pdf
fi

if [ -f build/junior_fr.pdf ]; then
  mv build/junior_fr.pdf junior_fr.pdf
fi

if [ -f build/letter_${YEAR}_en.pdf ]; then
  mv build/letter_${YEAR}_en.pdf letter_en.pdf
fi

if [ -f build/letter_${YEAR}_fr.pdf ]; then
  mv build/letter_${YEAR}_fr.pdf letter_fr.pdf
fi

make clean
