#!/bin/sh

set -e

cd /home/geokrety/GEOKRETY-LEGACY-STAGING/src
git fetch
git reset --hard origin/master
make updatestaging
