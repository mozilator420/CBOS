#!/bin/bash

set -ouex pipefail

# Copy the contents of system_files/ of the git repo to /
cp -avf "/ctx/system_files"/. /

# CBOS intentionally layers no competing NVIDIA packages. The Bazzite base image
# owns the tested kernel and modern NVIDIA driver combination. Gaming tools such
# as Steam, Proton, Gamescope, MangoHud, GameMode, and controller support come
# from the base image and are updated with it.
