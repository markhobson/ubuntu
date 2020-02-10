#!/bin/bash

# Enable experimental fractional scaling
gsettings set org.gnome.mutter experimental-features "['x11-randr-fractional-scaling']"

# Remove icons from desktop
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
