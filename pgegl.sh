#!/bin/bash

IN=/tmp/input.png
OUT=/tmp/output.png

cat > $IN

COMMAND="gegl -i $IN -o $OUT -- $@" 
$COMMAND 1>&2

exec cat $OUT
