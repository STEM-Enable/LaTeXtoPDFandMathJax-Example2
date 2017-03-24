#!/bin/bash

for i in $( ls *to.pdf ); do
cp $i ${i/-eps-converted-to/}
inkscape --without-gui --file=${i/-eps-converted-to/} --export-plain-svg=$(basename "${i/-eps-converted-to/}" .pdf).svg
done

