#!/bin/bash

model=''
directory=''
files=''

while getopts 'm:d:f:' flag; do
  case "${flag}" in
    m) model="${OPTARG}" ;;
    d) directory="${OPTARG}" ;;
    f) files="${OPTARG}" ;;
    *) exit 1 ;;
  esac
done

mkdir -p $directory

huggingface-cli download $model $files --local-dir $directory --local-dir-use-symlinks False

ls -lsa $directory/*
