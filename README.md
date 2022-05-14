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
create below directory at home path (i.e. for # user home directoy could be /(root))
mkdir -p ~/.vim/autoload >> once verify 
cd ~/.vim/autoload#
pwd
/root/.vim/autoload

now download plug.vim file and place it inside /root/.vim/autoload

more directory option can also be added as below
-------------------------------------------------
autoload
colors
plugged
backup

currently we are focused on auoload and plugged(plugin) folder

# Step 2: 
# =======

create .vimrc file inside the ~ /.vimrc (like this if you don't have same file already) and below content in the file 
call plug#begin('~/.vim/plugged')
add multiple plugins here
" Make sure you use single quotes
Plug 'scrooloose/nerdtree'
more plug here
more plug here
more plug here
..............
call plug#end()
and save the .vimrc file with above content

# Step 3: 
# ======= 
now simply run vim command and goto command mode (SHIFT+:) and typebelow
:PlugInstall (to install Plug 'scrooloose/nerdtree' as entry present inside .vimrc file) you must visible Progress bar at top-left corner
of your window

Now open vim <filepath>
(SHIFT+:):NERDTree in the vim command mode

Step 4:
======= 
Plugins can also be activated by pressing the keyboard keys when on VIM editior 
first please check key-notation and mapping by pressing below command in vim editior
:help key-notation

And below are mode present in VIM editior
:nmap - display normal mode maps (nnoremap)
:imap - display insert mode maps
:vmap - display visual and select mode maps
:smap - display select mode maps
:xmap - display visual mode maps
:cmap - display command-line mode maps
:omap - display operator pending mode maps

To map key-board shortcuts to vim editior
Key mapping syntax is like this:
map_mode <what_you_type> <what_is_executed>

Now to make keyboard key permanent mapping use nnoremap command(NORMAL mode) inside the vimrc file as follows
:nnoremap <C-g> :NERDTree<CR>

and to unmap use below
nunmap <C-g>





