mkdir old_files
for f in .??*
  do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
  
    mv ~/$f ~/dotfiles/oldfiles/
    ln -s ~/dotfiles/$f ~/$f 
  done
