PATH=/bin:/usr/bin:/sbin:/usr/sbin:/usr/local/bin:/usr/local/sbin
export PATH
BASEDIR=pwd
####Basic
sudo apt-get install git vim guake
##config
git config --global core.editor "vim"
git config --global user.name "enali"
git config --global user.email "johnenali2011@gmail.com"
git config --global color.ui true
git config --global credential.helper cache
##vim
git clone http://githut.com/gmarik/vundle.git ~/.vim/bundle/vundle
cat vimrc > ~/.vimrc
vim +BundleInstall +qall
##sources.list
cd /etc/apt/
mv sources.list sources.list_bk
sudo cat beihang.list > sources.list

####Install Software
sudo apt-get install air-crackng w3af octave zim &


####Config System
##.bashrc
cat bashrc >> ~/.bashrc
#wubi98
cd $BASEDIR/Software
tar zxvf ibus-table-wubi.tar.gz
cd ibus-table-wubi
./configure --prefix=/usr --enable-wubi98 --disable-wubi86
make
sudo make install


####ruby
sudo apt-get install libyaml-dev
