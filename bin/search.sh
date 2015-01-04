#!/usr/bin/env bash
# Seriously. Who can ever memorize this bloody command...
#
# Usage:
#
# search.sh "*.py" "searchterm"
# from: https://github.com/mingcc/mbrochh-dotfiles/blob/master/bin/search.sh

find . -name "$1" -exec grep -i -H -n "$2" {} \;
