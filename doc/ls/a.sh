#!/bin/bash
if [[ "$*" == npm*start* ]]; then
	for dir in "./content"/*/; do
		targ="c/$(basename "$dir")";
		echo $targ;
		mkdir -p "$targ"
		if [ -z "$(ls -A "$targ")" ]; then
			tar -c --one-file-system -C "$dir" . | tar xC "$targ"
		fi
	done
else
	echo "not"
fi
