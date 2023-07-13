#!/bin/bash

set -e

build() {
  docker build -t mytoolbox:latest .
}

add_function() {
  mkdir -p ~/.tbox
  cat <<EOF > ~/.tbox/run
# Docker Toolbox quick launch
tbox() {
  docker run --rm -it mytoolbox $@
}
EOF
}

install_function() {
  echo "[ -f ~/.tbox/run ] && source ~/.tbox/run" >> ~/.bashrc
}

postinstall_tip() {
  echo " ============================= "
  echo "Toolbox is installed successfully."
  echo "The only thing left to do is to type: "
  echo "     source ~/.bashrc"
  echo "...to be able to launch toolbox with a simple 'tbox' command."
  echo " ============================= "
}

build
add_function
install_function
postinstall_tip
