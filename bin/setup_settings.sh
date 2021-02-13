echo 'Create symlinks'
DIRS=(terminal vim zsh ruby tmux)
DOT_HOME=$HOME/dotfiles
for dir in ${DIRS[@]}
do
  echo "--- $dir ---"
  for f in $(ls -A $DOT_HOME/$dir)
  do
    echo $f
    ln -fs "$DOT_HOME/$dir/$f" $HOME/$f
  done
done
