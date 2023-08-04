#!/bin/bash

# Check if images are configured

if [[ -z "$IMAGES" ]]; then
  echo "Please set the IMAGES environment variable"
  exit 1
fi

# Split images by comma
IFS=',' read -ra IMAGES <<< "$IMAGES"

for image in "${IMAGES[@]}"; do
  docker manifest inspect $image >> /dev/null
  if [[ $? -ne 0 ]]; then
    echo "Image $image is not present in the registry"
    exit 1
  else 
    echo "Image $image is present in the registry"
  fi
done

echo "All images are present in the registry"
exit 0
