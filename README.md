archive.sh - a script to keep archives/backups of files that you're editing.
Usage: ./archive [filename]

This script makes a new folder in the directory that you're currently in called "Old".
If it already exists, it does nothing.
It makes a copy of the file specified, adds the current time/date onto the end,
and moves it into the "Old" folder.

To use this anywhere, either put it in a folder that is currently in your $PATH, or put it in a new folder (e.g., ~/Scripts). At least, thats how it *should* work. I can't seem to get it to work, so I've just aliased "archive" to "~/Scripts/./archive $FILE" for now.
