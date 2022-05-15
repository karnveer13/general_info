# Build Your VIM more user friendly 
To browse the code and make browsing more developer friendly

# VIM Plugin Manager
There are many ways to make Vim tools richer and more programmer-friendly. Can also be done manually and many developers can use different plugging managers, some of them are as follows

(vim-plug)plug.vim
-----------------
vundle 
----------
pathogen
------------

We'll look at plug.vim in more detail

# Step 1:
create new directory at home path (i.e. for # user home directoy could be /(root)) <br />
mkdir -p ~/.vim/autoload <br />
<br />
cd ~/.vim/autoload# <br />
pwd <br />
/root/.vim/autoload <br />

![Screenshot 2022-05-14 223447](https://user-images.githubusercontent.com/101242777/168441910-3aabcfed-6599-4d15-90f0-b3fc7a50709f.png)
<br />
now download plug.vim file and place it inside .vim/autoload/ directory <br />
below command can be used to download plug.vim <br />

Download the vim-plug
--
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Create vimrc(hidden) file
--
vim ~/.vimrc

more directory option can also be added as below
-------------------------------------------------
autoload <br />
colors <br />
plugged <br />
backup <br />
<br />
currently we are focused on auoload and plugged(plugin) folder

# Step 2: 
create .vimrc file inside the ~ /.vimrc (like this if you don't have same file already) and below content in the file <br />
call plug#begin('~/.vim/plugged') <br />
add multiple plugins here <br />
" Make sure you use single quotes <br />
Plug 'scrooloose/nerdtree' <br />
more plug here <br />
more plug here <br />
more plug here <br />
XXXXXXXXXXXXXXX <br />
call plug#end() <br />
and save the .vimrc file with above content <br />
<br />

Plugins can be added in .vimrc file
--
call plug#begin() <br />
XXXXXXX <br />
XXXXXXX <br />
call plug#end() <br />

# Step 3:
now simply run vim command and goto command mode (SHIFT+:) and typebelow
:PlugInstall (to install Plug 'scrooloose/nerdtree' as entry present inside .vimrc file) you must visible Progress bar at top-left corner
of your window

![Screenshot 2022-05-15 180529](https://user-images.githubusercontent.com/101242777/168473328-d4481582-5eb0-4d55-89b7-d8626bb6b4cb.png)

:PlugUpdate to update them <br />
:PlugClean will remove unused plugins <br />
:PlugUpgrade will update vim-plug itself <br />

Now open vim <filepath> <br />
(SHIFT+:):NERDTree in the vim command mode <br />
<br />
 
# Step 4:
Plugins can also be activated by pressing the keyboard keys when on VIM editior <br /> 
first please check key-notation and mapping by pressing below command in vim editior <br />
:help key-notation <br />
<br />
And below are mode present in VIM editior <br />
----------------------------------------------
  
:nmap - display normal mode maps (nnoremap) <br />
:imap - display insert mode maps <br />
:vmap - display visual and select mode maps <br />
:smap - display select mode maps <br />
:xmap - display visual mode maps <br />
:cmap - display command-line mode maps <br />
:omap - display operator pending mode maps <br />
<br />
To map key-board shortcuts to vim editior Key mapping syntax is like this: <br /> 
map_mode <what_you_type> <what_is_executed> <br />

Now to make keyboard key permanent mapping use nnoremap command(NORMAL mode) inside the vimrc file as follows <br />
:nnoremap <C-g> :NERDTree<CR> <br />

and to unmap use below <br />
nunmap <C-g> <br />
