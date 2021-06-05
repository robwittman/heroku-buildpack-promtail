#!/usr/bin/env bash

function error() {
  echo " !     $*" >&2
  exit 1
}

function header() {
  echo "-----> $*"
}

indent() {
  sed -u 's/^/       /'
}

