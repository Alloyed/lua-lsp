#!/usr/bin/fish
while true; clear; sleep .21s; busted --verbose; inotifywait -qr .; end
