#!/bin/bash

PRGDIR=`dirname "$0"`

pushd $PRGDIR/src > /dev/null
_SRCDIR=`pwd`
_DESTDIR=$HOME
[ -d $_DESTDIR ] || { echo "$_DESTDIR does not exist"; exit 1; }
echo "symlinks to dotfile source will be created in $_DESTDIR. You will be prompted before any existing files are removed."

for f in *; do
    _SRC=$_SRCDIR/$f
    _DST=$_DESTDIR/.$f
    { [ -f $_DST ] || [ -d $_DST ]; } && \
	rm -ri $_DST
    ln -s $_SRC $_DST
done
popd > /dev/null
