#!/bin/bash

SELF=`basename "$0"`
DIR=$(dirname "$0")
DATE=`date +%s`

/bin/find . -iregex '.*[.]\(mp4\|mov\|ts\)$' -print0 | xargs -0L1 sh -c "$DIR/encode_pv.sh \"\$0\" $1 $2"

