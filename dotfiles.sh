#!/bin/bash

TARGET=../dotfiles

git clone git@github.com:markhobson/dotfiles.git $TARGET
(cd $TARGET && ./install.sh)
