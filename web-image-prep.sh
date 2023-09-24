#!/usr/bin/bash

# assumptions include
# the images have a .JPG extension

mogrify -strip *
find . -type f -name '*.JPG' -exec bash -c 'convert -strip -interlace Plane -gaussian-blur 0.05 -quality 85% "$1" "${1%.jpg}_compressed.jpg" ' bash  {} \;
find . -type f -name '*compressed.jpg' -exec bash -c 'convert -resize 800x600 "$1" "${1%.jpg}_small.jpg" ' bash  {} \;