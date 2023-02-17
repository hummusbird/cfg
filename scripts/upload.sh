#!/bin/bash

date=$(date +%Y%M%d-%H%M%S.png)
apikey=$(cat ~/.config/scripts/key.txt)

cat > ~/screenshots/$date

curl -X POST -F api_key="$apikey" -F img=@"/home/hummusbird/screenshots/$date" https://img.birb.cc/api/upload
