#!/bin/bash
set -euo pipefail

token=$(pyjwt --key=$(cat app/sites/$1/secret.txt) encode sitename=$1)
curl -i -H "Authorization: Bearer $token" -F "post_type=image" -F "content=@$2" -F "caption=$3" -F "location=$4" https://$1/posts