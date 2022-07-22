#!/bin/bash

language="korean"

function learn() {
  local learn_language="English"
  echo "I am learning $learn_language"
}

function print() {
  echo "I can speak $1"
}

learn

print $language

print $learn_language

function globalChange() {
  language="japanese"
}

function localCahnge() {
  local language="chinese"
}

globalChange

print $language

localCahnge

print $language
