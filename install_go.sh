# go compiler installiation
curl -O https://storage.googleapis.com/golang/go1.12.9.linux-amd64.tar.gz
sha256sum go1.12.9.linux-amd64.tar.gz
tar -xvf go1.12.9.linux-amd64.tar.gz
sudo chown -R root:root ./go
sudo mv go /usr/local
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
source ~/.profile

# ycm-core go installiation
cd ~/.vim/bundle/YouCompleteMe
python3 install.py --go-completer

