#!/usr/bin/env bash
tmux new-session -d -s cka \
  'kubectl get nodes -w; bash' \; \
  split-window -h 'kubectl get pods --all-namespaces -w; bash' \; \
  select-pane -t 0

