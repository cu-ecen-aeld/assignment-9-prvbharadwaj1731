#!/bin/sh

#Clean most recent buildroot output

echo "Running buildroot clean script"
cd ./buildroot
make distclean

cd ..

echo "Buildroot output clean complete. Exiting..."
