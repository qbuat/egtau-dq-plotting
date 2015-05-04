#!/bin/bash

setupATLAS
localSetupROOT --skipConfirm

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo '---------------------------'
echo 'Copying files from '${DIR}

cp $DIR/plot-sequence `pwd`
cp $DIR/make-dq `pwd`

echo
echo 'USAGE: ./make-dq run1 run2 run3 [--ref run_ref] [--t0]'
echo '       [--ref] argument is optional'
echo '       [--t0] to plot the express stream'
echo '       for more details: ./make-dq --help and ./plot-sequence --help'