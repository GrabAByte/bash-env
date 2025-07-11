set nocp
syntax on
set backspace=indent,eol,start
execute pathogen#infect()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

set nocompatible
set expandtab
set smarttab
set autoindent
filetype indent plugin on

set tabstop=2
set shiftwidth=2
set expandtab

set pastetoggle=<F2>

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

"let g:syntastic_puppet_puppetlint_args='--no-80chars-check --class_inherits_from_params_class'
"let g:syntastic_puppet_puppetlint_args='--class_inherits_from_params_class'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'

set laststatus=2

" -----{ ALE }-----
let g:ale_open_list = 1
let g:ale_puppet_puppetlint_options='--no-autoloader_layout-check --no-documentation-check --no-80chars-check --no-class_inherits_from_params_class-check'

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
