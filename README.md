# webm2mp3
shell script for convert .webm files to .mp3

The script will try to convert all the .webm files in the current directory to .mp3 files by calling ffmpeg.
e.g. mymusic.webm -> mymusic.mp3
If mymusic.mp3 already exists, it will be skipped.
Tested in macos.

Steps:
1. Download ffmpeg and save it in the same directory with this script.
2. Save .webm files you want to convert to the same directory with this script.
3. Run this script.

