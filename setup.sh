# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=$PWD     			      # dotfiles directory
olddir=~/.dotfiles_old                # old dotfiles backup directory
files="tmux.conf vimrc vim profile bashrc"              # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file $olddir/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done


# create tmp dir
mkdir tmp

# requiremente
sudo apt-get install git tmux

# set up Vundle
git clone https://github.com/VundleVim/Vundle.vim.git vim/bundle/Vundle.vim

### powerline fonts for Airline 
git clone https://github.com/powerline/fonts.git tmp/fonts
cd tmp/fonts
./install.sh
cd $dir 

### Vim Colors 
# git clone https://github.com/flazz/vim-colorschemes.git ~/.vim

# Clean up
rm -rf tmp
