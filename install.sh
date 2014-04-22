#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" #"
DIR="$DIR/graph"

# check arguments
if [ ! -z "$1" ]; then
    DIR="$1"
fi

# create target directory and cd there
mkdir -p $DIR
cd $DIR

# clone base
git clone https://github.com/pirati-cz/graph.git .

# clone repositories
/bin/bash ./clone_repositories.sh

# generate ssh key
/bin/bash ./generate_ssh_key.sh

exit 0
