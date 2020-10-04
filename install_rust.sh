# installing rust compiler
#curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# installing ycm-core for rust
 cd ~/.vim/bundle/YouCompleteMe
python3 install.py --rust-completer
