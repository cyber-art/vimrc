# extracting colors folder 
tar xvzf colors.tar.gz

# installing git
sudo apt install git

# installing Vundle for Vim Plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# moving packages
mv vimrc ~/.vimrc
mv colors ~/.vim/
mv syntax ~/.vim/

# installing clang-format
sudo apt-get install clang-format

# ycm-core essentials building
apt install build-essential cmake vim python3-dev

# ycm-core installiation
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --clang-completer

bash install_java.sh
bash install_npm.sh
bash install_go.sh
bash install_rust.sh
