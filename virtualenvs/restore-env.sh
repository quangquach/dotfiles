#!/usr/bin/env bash

if [ -z "$1" ]
then
  echo "Need to provide the env name"
  exit
fi

find "$1"/ -type l -delete
virtualenv "$1"
