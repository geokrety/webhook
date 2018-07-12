#!/bin/sh

set -e

cd /home/geokrety/GEOKRETY-LEGACY-REC/src
git fetch
git rebase
make updaterec
