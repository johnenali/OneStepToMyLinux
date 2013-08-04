#Install Software
sudo apt-get install air-crackng w3af octave 
sudo apt-get install guake zim
#Config System
#.bashrc
cat bashrc >> ~/.bashrc
#wubi98
cd ~/Dropbox/Software
tar zxvf ibus-table-wubi.tar.gz
cd ibus-table-wubi
./configure --prefix=/usr --enable-wubi98 --disable-wubi86
make
sudo make install



