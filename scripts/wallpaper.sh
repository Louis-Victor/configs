#!/bin/bash

#feh --randomize --bg-fill $1
path=~/Pictures/wallpapers/
image=$(ls $path | dmenu)
feh --bg-fill $path$image
