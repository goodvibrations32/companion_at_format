#!/usr/bin/env sh

exec emacs -l /home/toro/.emacs.d/early-init.el --eval '(org-batch-agenda "a")'
