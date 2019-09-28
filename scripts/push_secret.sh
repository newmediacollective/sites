#!/bin/bash
set -euo pipefail

rsync -vh -og --chown=webhost:www-data app/.sites/secret.txt webhost@$1:/home/webhost/Sites/app/.sites/secret.txt
