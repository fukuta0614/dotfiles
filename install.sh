mkdir oldfiles
for f in .??*
  do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [ -f ~/$f ] && mv ~/$f ~/dotfiles/oldfiles/
    ln -s ~/dotfiles/$f ~/$f 
  done
