#!/bin/bash

# inputs:
#  downloads folder (default-current)
#  file name
#  audios folder (default-current)
#  out file name (default=<inputFileName>_converted.wav)
#  models folder (default-current)
#  model name
#  language (default-en)
#  delete converted audios (default-true)

downloads_folder=$1
file_name=$2
out_file_name=$3
audios_folder=$4

models_folder=$5
model_name=$6
language=$7
delete_converted=$8

# download audio from TG to downloads folder (default-current)

# convert audio to 16-bit WAV, save to audios folder
ffmpeg -i $downloads_folder/$file_name -ar 16000 -ac 1 -c:a pcm_s16le $audios_folder/$out_file_name

# run whisper container on audios in audios folder
podman run --it --rm -v $models_folder:/models -v $audios_folder:/audios whisper.cpp:main "./main -m /models/$model_name -f /audio/$file_name"
