#!/bin/bash -x
## script install-web.sh on https://github.com/bstarynk/b-star-y-tech-web
## see http://rsync.samba.org/
##  Copyright © 2020 Basile Starynkevitch
##
##  This program is free software: you can redistribute it and/or modify
##  it under the terms of the GNU General Public License as published by
##  the Free Software Foundation, either version 3 of the License, or
##  (at your option) any later version.
##
##  This program is distributed in the hope that it will be useful,
##  but WITHOUT ANY WARRANTY; without even the implied warranty of
##  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##  GNU General Public License for more details.
##
##  You should have received a copy of the GNU General Public License
##  along with this program.  If not, see <http://www.gnu.org/licenses/>.
export BSTARY_WEBHOST=ovh.starynkevitch.net
ping -v -c 1 $BSTARY_WEBHOST
#sync --verbose --verbose --info=progress --stats --checksum --relative \
#     --update --inplace  --backup --copy-links \
#     --copy-dirlinks  --perms --executability --times \
#     --one-file-system  --compress --timeout=4 \
#     --exclude='*~'  --exclude='*.o' --exclude='install-web.sh' \
#     --dry-run --progress        \
#     $(realpath $(dirname $(which $0))) \
#     $BSTARY_WEBHOST::b-star-y
scp -vTr web $BSTARY_WEBHOST:/home/www/html/b-star-y.tech
times
