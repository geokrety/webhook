#!/bin/sh

set -e

cd /home/geokrety/GEOKRETY-LEGACY-BOLY38/src
git fetch
git reset --hard origin/boly38
make updateboly38
