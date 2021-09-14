#!/bin/bash

# install dependency
sudo pacman -S rapidjson make gcc xtitle yad feh autotiling maim pamixer


# clone project && build it
git clone https://github.com/iiKoe/i3-winmotion.git 
cd ./i3-winmotion && make

sudo cp ./bin/i3-winmotion /usr/local/bin
