cp ./.vimrc $HOME
cp ./.tmux.conf $HOME

brew install fzf
brew install the_silver_searcher
brew install cmake
brew install awscli

# Install vim Vundle and all other plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall +qall

# Move shell scripts
cp -r ./shell ~/.shell

# Set up function key binding
echo 'alias fuz="source $HOME/.shell/fuz.sh"' >> ~/.zshrc
echo 'alias fup="source $HOME/.shell/fup.sh"' >> ~/.zshrc
echo 'source $HOME/.shell/key-binding.zsh' >> ~/.zshrc

 # Prompt↵
 echo 'PROMPT="%{$fg[cyan]%}%d $(git_prompt_info)
 %{$fg_bold[white]%}>> %{$reset_color%}"' >> ~/.zshrc

