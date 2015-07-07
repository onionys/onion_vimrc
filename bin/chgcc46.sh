update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 50
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 20
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 10
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.6 50
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.8 50

rm /usr/bin/arm-linux-gnueabihf-gcc
ln -s /usr/bin/gcc-4.6 /usr/bin/arm-linux-gnueabihf-gcc
