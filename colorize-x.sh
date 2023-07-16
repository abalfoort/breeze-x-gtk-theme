#!/bin/bash

FLS=$(find ./usr/share/themes/ -name "gtk.css" -o -name "gtkrc" -o -name "*.svg" -o -name "*.xpm")
for F in $FLS; do
    sed -i 's/#3daee9/#f19900/g' $F
    sed -i 's/37, 164, 230/229, 142, 1/g' $F
    sed -i 's/61, 174, 233/241, 153, 0/g' $F
    # svg only
    sed -i 's/#08293a/#442200/g' $F
    # xpm only
    sed -i 's/#E0E0E0/#EFF0F1/g' $F
    sed -i 's/#31363B/#2A2D32/g' $F
done
