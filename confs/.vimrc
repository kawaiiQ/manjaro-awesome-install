call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install({'tag':1})}}
Plug 'scrooloose/nerdtree'
Plug 'luochen1990/rainbow'

call plug#end()

" 左侧目录
map <C-n> :NERDTreeToggle<CR>
" 翻页
map , gT
map . gt

" 彩色括号
let g:rainbow_active = 1

" 显示行号，并设置行号及背景的颜色
:set number
:highlight LineNr ctermfg=23
:highlight LineNr ctermbg=black

" 设置缩进
:set expandtab
:set ts=2
:set sw=2
:set shiftwidth=2
:set autoindent
":set smartindent
"let g:typescript_indent_disable=1

" 使用系统剪贴板
:set clipboard=unnamed

" 搜索高亮
:set hlsearch

" 设置折叠
:set foldmethod=indent
:set foldlevel=99

" 取消自动换行
:set nowrap

" 设置coc.nvim插件
let g:coc_global_extensions = [
  \'coc-emoji',
  \'coc-vimtex',
  \'coc-json','coc-tsserver','coc-html','coc-css','coc-vetur','coc-phpls',
  \'coc-java',
  \'coc-solargraph',
  \'coc-rls',
  \'coc-yaml',
  \'coc-python',
  \'coc-highlight',
  \'coc-emmet',
  \'coc-snippets',
  \'coc-lists',
  \'coc-git',
  \'coc-yank',
  \'coc-fsharp',
  \'coc-svg',
  \'coc-tailwindcss',
  \'coc-angular',
  \'coc-vimlsp']
