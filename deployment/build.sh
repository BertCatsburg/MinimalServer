#!/usr/bin/env bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
echo "Script directory: $SCRIPT_DIR"
cd $SCRIPT_DIR
cd ..

# Create empty Build Directory
rm -Rf build/
mkdir build

# Clone file in Build directory
cd $SCRIPT_DIR
cd ..
cd build
git clone git@github.com:BertCatsburg/MinimalServer.git .
cp ../deployment/Dockerfile_minimal_server ./Dockerfile_minimal_server

# Run docker compose
cd $SCRIPT_DIR
cd ..
cd deployment
docker compose down
docker compose up
