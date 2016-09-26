
git submodule update --init

cd
ln -s .vim/.vimrc ~/.vimrc

vim +PluginInstall +qall
