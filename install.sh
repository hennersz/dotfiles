export ZSH="$HOME/.dotfiles/oh-my-zsh"; sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
rm -r ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
mkdir $ZSH_CUSTOM/themes/
touch $ZSH_CUSTOM/themes/bullet-train.zsh-theme
curl -k https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme -o $ZSH_CUSTOM/themes/bullet-train.zsh-theme
git clone https://github.com/powerline/fonts.git ~/Downloads/fonts
~/Downloads/fonts/install.sh
rm -r ~/Downloads/fonts
ln -s ~/.dotfiles/.vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
