byobu-enable
#vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#after adding packagest to .vmrc:
vim +PluginInstall +qall

#rails
curl -L get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
echo 'source ~/.rvm/scripts/rvm' >> ~/.bashrc
rvm requirements
rvm install 2.1.2
rvm use 2.1.2
rvm --default use 2.1.2
gem install rails -v 4.1.1

#nodejs
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | sh
source ~/.nvm/nvm.sh
echo 'source ~/.nvm/nvm.sh' >> ~/.bashrc
nvm install 0.10.29
npm update npm -g

#mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo start mongod

#making npm work as per http://stackoverflow.com/a/13119867
#npm config set registry http://registry.npmjs.org/

