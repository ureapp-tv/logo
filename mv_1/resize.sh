#!/bin/bash
# Loop through all files in the current directory
for file in *; do
  # Check if the file has a .jpg extension
  if [[ -f "$file" && "${file##*.}" == "jpg" ]]; then
    # Specify the desired width and height for the resized image
    width=75
    height=100
    # Use FFmpeg to resize the image
    sudo ./ffmpeg -y -i "$file" -vf "scale=$width:$height" "$file"
    echo "Resized $file"
  fi
done
