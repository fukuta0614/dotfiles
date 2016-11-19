list=(".zshrc" ".zshrc.misc" ".zshrc.antigen" ".vimrc" ".tmux.conf" ".gitconfig")

for item in ${list[@]}; do
    if [ ! -f $item ]; then
       mv ~/$item .
       ln -s ~/dotfiles/$item ~/$item
    fi
done




