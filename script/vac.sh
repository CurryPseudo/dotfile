#/bin/bash
pactl load-module module-null-sink sink_name=Virtual0
pactl load-module module-loopback source=Virtual0 sink=0
