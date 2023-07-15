#!/bin/sh
set -xe

tmux new -d -s myRecSession
tmux send-keys -t myRecSession.0 "asciinema rec script.cast" ENTER
sleep 1

tmux send-keys -t myRecSession.0 "echo "
sleep 0.3
tmux send-keys -t myRecSession.0 "'Hello "
sleep 0.3
tmux send-keys -t myRecSession.0 "World'"
sleep 1
tmux send-keys -t myRecSession.0 ENTER
sleep 1
tmux send-keys -t myRecSession.0 C-d

tmux send-keys -t myRecSession.0 "exit" ENTER
