#!/bin/bash
ROOT=`dirname $0`
FUZZER=afl_fuzz
PIN=pin

if [[ -z "$INSCOUNT_TRACK_OUT" ]]; then
  INSCOUNT_TRACK_OUT=InscountTrack.out
fi

CMD="$PIN -t $ROOT/obj-intel64/InscountTrack.so -o $INSCOUNT_TRACK_OUT -- $FUZZER $@"
echo $CMD
`$CMD`