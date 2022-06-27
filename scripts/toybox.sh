#!/bin/sh

cd "$ROOT"/bin/ || exit
	wget https://landley.net/toybox/bin/toybox-x86_64 -O toybox
	chmod +x ./toybox

	for program in $(./toybox); do
		ln -fs /bin/toybox $program;
	done
cd .. || exit
