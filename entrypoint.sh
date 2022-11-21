#!/bin/sh -l

sudo apt-get update
sudo apt-get install cmake python3 -y
git clone --depth 1 https://github.com/jayanta525/apindex-v2.git
cd apindex-v2
sed -i '/<\/head>/i <script data-goatcounter="https://oglicensing.goatcounter.com/count" async src="//gc.zgo.at/count.js"></script>' share/apindex/index.template.html
cmake . -DCMAKE_INSTALL_PREFIX=/usr
sudo make install
cd ..
rm -rf apindex-v2/
apindex $1/.
