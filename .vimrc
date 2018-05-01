" 
" Charge le fichier de configuration vim par defaut
unlet! skip_defaults_vim
source ${VIMRUNTIME}/defaults.vim
" 
" Some configuration enabled at startup
" - Numerotation des lignes
set number
" - Couleur de la numerotation
highlight LineNr ctermfg=DarkGrey guifg=DarkGrey
"
" Raccourcis deplaement dans les tab
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
