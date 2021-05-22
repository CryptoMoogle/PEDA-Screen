#!/bin/zsh

echo -e '\x1b[8;46;148t'

tmux new-session -d 'cat'

tmux split-pane -v 'cat'
tmux resize-pane -U 1
tmux split-pane -h 'cat'

tmux select-pane -t 0
tmux split-pane -h 'cat'

tmux select-pane -t 1
tmux resize-pane -R 23

tmux select-pane -t 2
tmux resize-pane -R 13

tmux select-pane -t 1

tmux -2 attach-session -d
