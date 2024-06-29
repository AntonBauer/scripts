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

raw_files_folder=$1
file_to_transcribe=$2
converted_file_name=$3
audios_folder=$4

models_folder=$5
model_name=$6
language=$7
delete_converted=$8

# run ffmpeg in container to convert audio to 16-bit WAV, save to audios folder in container
podman run -it --rm -v $raw_files_folder:/audios whisper.cpp:main "ffmpeg -i /audios/$file_to_transcribe -ar 16000 -ac 1 -c:a pcm_s16le /audios/$converted_file_name"

# run whisper container on converted audio
podman run -it --rm -v $models_folder:/models -v $raw_files_folder:/audios whisper.cpp:main "./main -m /models/$model_name -f /audios/$converted_file_name -l $language"
