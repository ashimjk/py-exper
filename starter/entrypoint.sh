#!/bin/bash

if [ $# == "0" ]; then
    echo "cat << INST_EOF > /tmp/py"
    cat /starter/py.tpl
    echo "INST_EOF"
    echo "sudo mv /tmp/py /usr/local/bin/py"
    echo "sudo chmod +x /usr/local/bin/py"
else
    umask 000
#    mkdir -p /root/.ssh
#    cp "$USER_HOME"/.ssh/* /root/.ssh
#    zx zdevmode default
#    export KUBECONFIG=/tmp/k8sconfig
#    zsh
    sh
fi
