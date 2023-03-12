@echo off

setlocal enabledelayedexpansion

for %%f in (%*) do (
  ffmpeg.exe -i "%%f" -r 60 -vf "crop=ih*(9/16):ih" "%%~nf ~shorts.mp4"
)

echo All videos processed.
