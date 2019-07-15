#!/usr/local/bin/zsh

echo 'Create symlinks'
DIRS=(iterm_files terminal_files vim_files zsh_files)
DOT_HOME=$HOME/dotfiles
for dir in ${DIRS[@]}
do
  for f in $(ls -A $DOT_HOME/$dir)
  do
    ln -fs "$DOT_HOME/$dir/$f" $HOME/$f
  done
done

echo 'Setting for atom'
rm -f $HOME/.atom/keymap.cson
ln keymap.cson $HOME/.atom/keymap.cson

echo 'Setting for python'
rm -f $HOME/.ipython/profile_default/startup/default.py
ln -s $HOME/dotfiles/default.py $HOME/.ipython/profile_default/startup/default.py
