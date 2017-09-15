#!/usr/bin/fish
while true; clear; sleep .21s; busted --verbose $argv; inotifywait -qr .; end
