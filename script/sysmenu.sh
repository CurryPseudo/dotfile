#!/bin/bash
# Launch Rofi
MENU="$(rofi -no-lazy-grab -sep "|" -dmenu -i -p 'System :' \
-matching fuzzy \
<<< "  Lock|  Logout|  Reboot|  Shutdown")"
case "$MENU" in
  *Lock) dm-tool lock ;;
  *Logout) bspc quit ;;
  *Reboot) reboot ;;
  *Shutdown) systemctl poweroff ;;
esac
