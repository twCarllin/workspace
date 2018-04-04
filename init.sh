cp ./.vimrc $HOME
cp ./.tmux.conf $HOME

brew install fzf
brew install the_silver_searcher

# Install vim Vundle and all other plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

