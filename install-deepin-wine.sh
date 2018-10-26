#!/bin/bash
echo "update cache"
sudo apt update

echo "installing libs..."
sudo dpkg -i --force-overwrite ./libs/*.deb
sudo apt  install -fy -o Dpkg::Options::="--force-overwrite"

echo "installing deepin-wine..."
sudo dpkg -i --force-overwrite ./deepin-wine/*.deb
sudo apt  install -fy -o Dpkg::Options::="--force-overwrite"
sudo apt autoremove

echo "fixing notification bug..."
sudo tar -zxvf ./deepin-wine/bugfix/shell32.dll.so.tar.gz -C /usr/lib/i386-linux-gnu/deepin-wine/
echo "done."
