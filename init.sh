list=(".zshrc" ".zshrc.misc" ".zshrc.antigen" ".vimrc" ".tmux.conf")

for item in ${list[@]}; do
    mv ~/$item .
    ln -s ~/dotfiles/$item ~/$item
done




