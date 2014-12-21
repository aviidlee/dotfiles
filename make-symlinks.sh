#!/bin/bash
################################################################################
# .make.sh
# Makes symlinks from home directory to dotfiles in ~/dotfiles.
# Taken from https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh
################################################################################

dir=~/dotfiles 
olddir=~/dotfiles_old
files="vimrc bashrc"

echo -n "Creating $olddir for backup of any existing dotfiles in ~..."
mkdir -p $olddir
echo "done"

echo -n "Changing to $dir directory"
cd $dir
echo "done"

# Move any existing dotfiles in homedir to dotfiles_old, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file 
done 



