#!/bin/sh

id=$(xdo id -n Scratchy);
if [ -z "$id" ]; then
	alacritty --title Scratchy --class Scratchy &
else
	bspc node $id --flag hidden -f
fi
