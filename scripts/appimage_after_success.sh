#!/bin/bash --

set -e

cd ${ROOT_PATH}/scripts/services

TEMP_DOWNLOAD_URL=$(python3 transferwee.py upload NetEase_Cloud_Music-1.2.0.2.*.AppImage)