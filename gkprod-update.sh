#!/bin/sh

set -e

cd /home/geokrety/GEOKRETY-LEGACY-PROD/src
git fetch
git rebase
git reset --hard origin/prod
make updateprod
