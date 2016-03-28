SHELL := /bin/bash

SOURCE ?= pub/source
BUILD ?= build
TOP_CALENDAR ?= $(SOURCE)/top.rem
CALENDARS ?= $(TOP_CALENDAR) $(wildcard $(SOURCE)/*.rem)

GEN_LANG ?= en
MEDIA ?= letter

YEAR ?= $(shell date +%Y)
DATE ?= $(YEAR)-$(shell expr 1 + $(shell date +%m))-01
MONTHS ?= 12

.PHONY : all
#all : $(BUILD)/junior_$(GEN_LANG).pdf
all: $(BUILD)/$(MEDIA)_$(YEAR)_$(GEN_LANG).pdf

include pub/Makefile