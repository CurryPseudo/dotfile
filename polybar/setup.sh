#!/bin/bash
mkdir -p ~/.local/share/fonts
cp -r fonts/* ~/.local/share/fonts
fc-cache -v
