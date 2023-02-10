#!/usr/bin/env bash

file=$1

wget -nc --no-check-certificate -P results/data/raw/ https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/$file