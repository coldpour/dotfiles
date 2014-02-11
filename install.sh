#!/bin/bash

PRGDIR=`dirname "$0"`

pushd $PRGDIR/src > /dev/null
_SRCDIR=`pwd`
for f in *; do
    _SRC=$_SRCDIR/$f
    _DST=$HOME/.$f
    rm -ri $_DST
    ln -s $_SRC $_DST
done
popd > /dev/null
