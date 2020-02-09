#!/bin/bash

TARGET=~/Projects/dotfiles

git clone git@github.com:markhobson/dotfiles.git $TARGET
(cd $TARGET && ./install.sh)
