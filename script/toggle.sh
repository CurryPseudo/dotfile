#!/bin/sh
xdotool search --class $1 | while read id; do
  bspc node $id --flag hidden -f
done
