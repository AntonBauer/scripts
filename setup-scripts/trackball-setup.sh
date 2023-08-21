#!/usr/bin/env bash

# Default layout
# "Button Middle"  	"Button Wheel Up"      "Button Horiz Wheel Left"    "Button Side"
#       2                   4                         6				  8         "Button Extra"
#                                                                                              9
# "Button Left"     "Button Wheel Down"    "Button Horiz Wheel Right"   "Button Right"
#       1		5                         7                       3


# Number meanings
# "Button Left" "Button Middle" "Button Right" "Button Wheel Up" "Button Wheel Down" "Button Horiz Wheel Left" "Button Horiz Wheel Right" "Button Side" "Button Extra"
#       1              2             3              4                   5                  6                               7                   8             9
#

trackball_string=$(xinput list | rg 'Kensington\s.+\sMouse')
if [[ ! -z $trackball_string ]]; then
  device_id=$(echo $trackball_string | sed 's/^.*id=\([0-9]*\).*$/\1/')

  # Map Top-Left to "Button Left" and Bottom-Left to "Button Middle" 
  xinput set-button-map $device_id 2 1 3 4 5 6 7 8 9
fi
