#!/usr/bin/env bash

# symlinks dotfiles, overwriting existing.
for $file in `ls home`; do ln -sfF home/$file ~/; done;
