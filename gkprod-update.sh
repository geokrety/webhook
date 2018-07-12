#!/bin/sh

set -e

cd /home/geokrety/GEOKRETY-LEGACY-PROD/src
git fetch
git rebase
make updateprod
