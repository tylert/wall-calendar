#!/usr/bin/env bash

YEAR=$(date +%Y)

make GEN_LANG=en MEDIA=legal -f Makefile_radio
make GEN_LANG=fr MEDIA=legal -f Makefile_radio

make GEN_LANG=en MEDIA=letter -f Makefile_radio
make GEN_LANG=fr MEDIA=letter -f Makefile_radio

if [ -f build/junior_en.pdf ]; then
  mv build/junior_en.pdf junior_en.pdf
fi

if [ -f build/junior_fr.pdf ]; then
  mv build/junior_fr.pdf junior_fr.pdf
fi

if [ -f build/legal_${YEAR}_en.pdf ]; then
  mv build/legal_${YEAR}_en.pdf legal_en.pdf
fi

if [ -f build/legal_${YEAR}_fr.pdf ]; then
  mv build/legal_${YEAR}_fr.pdf legal_fr.pdf
fi

if [ -f build/letter_${YEAR}_en.pdf ]; then
  mv build/letter_${YEAR}_en.pdf letter_en.pdf
fi

if [ -f build/letter_${YEAR}_fr.pdf ]; then
  mv build/letter_${YEAR}_fr.pdf letter_fr.pdf
fi

make clean -f Makefile_radio
