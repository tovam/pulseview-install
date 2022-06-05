# Install Pulseview dependencies
sudo apt install cmake libsigrokcxx-dev libglibmm-2.4-dev libsigrokdecode-dev qtbase5-dev qttools5-dev libqt5svg5-dev libboost-dev libboost-filesystem-dev libboost-serialization-dev

# Compile and install libsigrokdecode
git clone git://sigrok.org/libsigrokdecode
cd libsigrokdecode
git checkout e556e11
./autogen.sh
./configure
make
sudo make install
cd ..

# Compile and install fx2lafw firmwares
sudo apt install sdcc
git clone git://sigrok.org/sigrok-firmware-fx2lafw
cd sigrok-firmware-fx2lafw
git checkout 61f1c8f
./autogen.sh
./configure
make
sudo make install

# Compile and install fx2lafw firmwares
git clone git://sigrok.org/pulseview.git
cd pulseview
git checkout 7e5c839
cmake .
make
