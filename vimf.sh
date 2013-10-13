#!/bin/bash

#find . -name $1 | head -1 | xargs --delimiter '\n' vim

#vim "$(find ./ -name **.java | sed -n '2{p,q}')"

#vim "$(find ./ -name **.java | awk 'NR==2{pring;quit}')"

vim "$(find ./ -name $1 | head -1)"
