#!/bin/bash

language="korean"

function print () {
  echo "I can speak $language"
}

print

function change () {
  language="english"
}

change

print