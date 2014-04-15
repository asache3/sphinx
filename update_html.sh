#!/bin/bash

DIR=/usr/local/sphinx

echo "### Deleting _build/doctrees... ###"
rm -rf $DIR/_build/doctrees
sleep 5

echo "### Deleting _build/html... ###"
rm -rf $DIR/_build/html
sleep 5

cd $DIR
make html
cd -
