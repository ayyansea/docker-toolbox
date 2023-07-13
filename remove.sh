#!/bin/bash

set -e

docker image rm -f mytoolbox:latest || true
rm -rf ~/.tbox
sed -i "/\[ -f ~\/\.tbox\/run \] && source ~\/\.tbox\/run/d" ~/.bashrc

echo " ========================= "
echo "docker-toolbox has been removed."
echo "To get rid of the 'tbox' command, please type: "
echo "      source ~/.bashrc"
echo "and it will no longer exist."
echo " ========================= "
