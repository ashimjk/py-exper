#!/bin/bash

#readonly SETUP_JSON=.zxc_setup.json
#readonly USERPREF_JSON=.zxc_userpref.json
export USER_HOME=\$HOME
export PSCI_WORKDIR=\$(pwd)
DOCKER_ARGS=()

set +e
#touch \$HOME/.gitconfig
#touch \$HOME/.zsh_history
set -e

if [ "\$(uname -s)" = "Linux" ]; then
    DOCKER_ARGS+=(  --volume "/var/run/docker.sock:/var/run/docker.sock" )
fi

#if [ ! -f "\$HOME/.zxc_setup.json" ]; then
#    zxsetup
#fi

DOCKER_ARGS+=(  --rm
                --tty
                --interactive
                --privileged
                --env PSCI_WORKDIR
                --env USER_HOME
                --env TERM
                --env TERM_COLOR
                --env TERM_PROGRAM
                --env LS_COLORS
                --volume  \$HOME:\$HOME
                --volume  \$HOME/.m2:/root/.m2
                --volume  \$HOME/.zsh_history:/root/.zsh_history
                --volume  \$HOME/.gitconfig:/root/.gitconfig
                --volume  \$HOME/\$SETUP_JSON:/root/\$SETUP_JSON
                --volume  \$HOME/\$USERPREF_JSON:/root/\$USERPREF_JSON
                --workdir \$PSCI_WORKDIR
                --net host
             )

docker run "\${DOCKER_ARGS[@]}" ashimjk/py test

