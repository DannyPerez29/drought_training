#!/usr/bin/env bash

echo "file_name" > results/data/metadata/ghcnd_all_files.txt
tar tf results/data/raw/ghcnd_all.tar.gz | grep ".dly" >> results/data/metadata/ghcnd_all_files.txt