#!/bin/bash

if [ `env | grep -c is_vim` != 0 ]
then
    return
fi

SESSION_NAME=work

# create session if not exist
if ! tmux has-session -t ${SESSION_NAME}; then
    tmux new-session -s "${SESSION_NAME}" -n task -d
fi

# attach to session unless we are already inside a session
if [[ ! "$TERM" =~ "screen" ]]; then
    tmux attach -t ${SESSION_NAME}
fi
