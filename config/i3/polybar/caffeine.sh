#!/bin/bash
#
# Show caffeine status

if (( $(pgrep -f caffeine-ng|wc -l) > 0 )); then
	echo "%{F#e06c75}%{F-}"
else
	echo "﯈"
fi

case "$1" in
	-t)
		if (( $(pgrep -f caffeine-ng|wc -l) == 0 )); then
			caffeine -a &
		else
			caffeine kill &
		fi
		;;
	*)
esac