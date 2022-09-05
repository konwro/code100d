# Convert webm file to mp3 format
# Prerequisite: FFMPEG installed and added to PATH

#usage
# python webm2mp3_converter.py --in_path "fullpath1"  --out_path "fullpath2"

import argparse
import os
import subprocess
import sys
import re

#parser
parser = argparse.ArgumentParser(description=".webm to .mp3 converter")

#arguments
parser.add_argument(
    '--in_path', 
    action='store', 
    type=str, 
    required=True, 
    help='Path of the input .webm file'
)

parser.add_argument(
    '--out_path',
    action='store',
    type=str,
    required=False,
    help='Path for the output .webm file'
)

# parse arguments
args = parser.parse_args()

# convert function
for file in os.listdir(args.in_path):
    webmFile = os.path.join(args.in_path, file)
    mp3File = os.path.join(args.out_path, file).replace("webm","mp3")

    cmd = f"ffmpeg -i \"{webmFile}\" -vn -ab 128k -ar 44100 -y \"{mp3File}\""
    cmd = f"ffmpeg -i \"{webmFile}\" -vn -ab 128k -ar 44100 -y \"{mp3File}\""
    subprocess.call(cmd, shell=True)



# ref
# https://docs.python.org/3/library/argparse.html
# https://github.com/outama-othmane/WebmToMp3/blob/main/WebmToMp3.py

