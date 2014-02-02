
archive.sh - a script to keep archives/backups of files that you're editing.
Usage: ./archive [filename]

This script makes a new folder in the directory that you're currently in called "Old".
If it already exists, it does nothing.
It makes a copy of the file specified, adds the current time/date onto the end,
and moves it into the "Old" folder.

