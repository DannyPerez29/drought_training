#!/usr/bin/env bash

# Download all the data and get the file information
results/scripts/get_ghcn_data.bash ghcnd_all.tar.gz
results/scripts/get_ghcn_files.bash

# get listing of the types of data found
results/scripts/get_ghcn_data.bash ghcnd-inventory.txt

# get metadata of weather stations
results/scripts/get_ghcn_data.bash ghcnd-stations.txt

