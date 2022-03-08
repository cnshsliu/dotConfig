"let g:python_host_prog="/usr/local/bin/python2.7"
"let g:python3_host_prog="/Users/lucas/.pyenv/shims/python"
let g:python3_host_prog="/usr/bin/python3"
syntax on
set ruler               " Show the line and column numbers of the cursor.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set modeline            " Enable modeline.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)
set nofoldenable
" More natural splits
set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.
if !&scrolloff
  set scrolloff=3       " Show next 3 lines while scrolling.
endif
if !&sidescrolloff
  set sidescrolloff=5   " Show next 5 columns while side-scrolling.
endif
set display+=lastline
set nostartofline       " Do not jump to first character with page commands.
set noerrorbells                " No beeps
set backspace=indent,eol,start  " Makes backspace key more powerful.
set showcmd                     " Show me what I'm typing
set showmode                    " Show current mode.
set noswapfile                  " Don't use swapfile
set nobackup                    " Don't create annoying backup files
set nowritebackup               " no writebackup
set encoding=utf-8              " Set default encoding to UTF-8
set autowrite                   " Automatically save before :next, :make etc.
set autoread                    " Automatically reread changed files without asking me anything
set laststatus=2
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats
set showmatch                   " Do not show matching brackets by flickering
set incsearch                   " Shows the match while typing
set hlsearch                    " Highlight found searches
set noignorecase                " Search case insensitive...
set smartcase                   " ... but not when search pattern contains upper case characters
set autoindent
set tabstop=2 shiftwidth=2 expandtab
set gdefault                    " Use 'g' flag by default with :s/foo/bar/.
set magic                       " Use 'magic' patterns (extended regular expressions).
set lbr
set tw=500
set nospell
set listchars=tab:▷▷⋮
set list
" TextEdit might fail if hidden is not set.
set hidden

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


" Leader key is like a command prefix.
let mapleader=';'
let maplocalleader='\'

let g:session_autosave = 'yes'
let g:session_autoload = 'yes'
let g:session_default_to_last = 1

""" START:Input Method Setting
let g:im_select_get_im_cmd = ['im-select']
let g:ImSelectSetImCmd = {key -> ['im-select', key]}
function! GetImCallback(exit_code, stdout, stderr) abort
  return a:stdout
endfunction
let g:ImSelectGetImCallback = function('GetImCallback')
let g:im_select_default='com.apple.keylayout.ABC'
let g:im_select_command='~/bin/im-select'
let g:im_select_enable_for_gvim=1
""" END:Input Method Setting

"
" Buffer handling
" nmap L :let &number=1-&number<CR>
nnoremap <leader>ec :tabedit $MYVIMRC<CR>
nnoremap <leader>sc :source $MYVIMRC<CR>
nnoremap <leader>cr :CocRestart<CR><CR>
inoremap <leader>; <C-O>:up<CR>
nnoremap <silent> <leader>n :set number! number?<CR>
nnoremap <silent> <leader>to :tabonly<CR>
nnoremap <silent> <tab><tab> :up<CR>
nnoremap <silent> <leader>e zczA
nnoremap <silent> <leader>; :up<CR>
nnoremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>tt :tab split<CR>
nnoremap <silent> <leader>wo :only<CR>
nnoremap <silent> <leader>wm <C-w>_
nnoremap <silent> <leader>= <C-w>=
nnoremap <silent> <C-h> <C-w><C-h>
nnoremap <silent> <C-j> <C-w><C-j>
nnoremap <silent> <C-k> <C-w><C-k>
nnoremap <silent> <C-l> <C-w><C-l>


" Plugins here
call plug#begin('~/.config/nvim/plugged')
" Tern is a stand-alone code-analysis engine for JavaScript.
Plug 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
" A collection of language packs for Vim.
" Best syntax and indentation support (no other features). Hand-selected language packs
Plug 'sheerun/vim-polyglot'
" Plug 'isruslan/vim-es6' Write JavaScript ES6 easily with vim.
Plug 'ludovicchabant/vim-gutentags'
" Format code with one button press (or automatically on save).
" Plug 'Chiel92/vim-autoformat'
" Plug 'scrooloose/nerdtree'
" Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
" Surround.vim is all about 'surroundings': parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.   https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
" https://github.com/preservim/nerdcommenter
Plug 'preservim/nerdcommenter'
Plug 'brglng/vim-im-select'
Plug 'vim-airline/vim-airline'
" Plug 'beautify-web/js-beautify'
" Conquer of Completion https://github.com/neoclide/coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mileszs/ack.vim'
" Plug 'jceb/vim-orgmode'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'christianrondeau/vim-base64'
Plug 'aehlke/vim-rename3'
Plug 'joegesualdo/jsdoc.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'nicwest/vim-http'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install'  }
Plug 'neitanod/vim-clevertab'
Plug 'webdevel/tabulous'
Plug 'caenrique/nvim-toggle-terminal'
Plug 'leafOfTree/vim-matchtag'
" Keep nerdtree open automatically on each new tab opened.
" if find annoying, comment it out then
" Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-rhubarb'
Plug 'gcmt/taboo.vim'
Plug 'eliba2/vim-node-inspect'
let g:nodeinspect_window_pos='right'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'lambdalisue/guise.vim'
Plug 'lambdalisue/askpass.vim'
Plug 'liuchengxu/vista.vim'
set guioptions-=e
set sessionoptions+=tabpages,globals
let g:taboo_tab_format=' %I%P/%f%m '
Plug 'skywind3000/vim-quickui'
Plug 'xfyuan/vim-mac-dictionary'
call plug#end()

" nerdtree config
" map <leader>nt <Esc>:NERDTreeToggle<CR>       

set background=dark
colorscheme PaperColor
let g:rehash256 = 1
let g:molokai_original=1
setlocal foldmethod=indent
filetype plugin on
set cursorline
set cursorcolumn



" let g:gutentags_trace = 1
let g:gutentags_add_default_project_roots = 0
let g:gutentags_project_root = ['package.json', '.git']
let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')
command! -nargs=0 GutentagsClearCache call system('rm ' . g:gutentags_cache_dir . '/*')
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
let g:gutentags_ctags_executable = '/opt/homebrew/Cellar/universal-ctags/p5.9.20210926.0/bin/ctags'
let g:gutentags_ctags_extra_args = [ '--tag-relative=yes', '--fields=+ailmnS']
let g:gutentags_ctags_exclude = [ '*.git', '*.svg', '*.hg', '*/tests/*', 'build', 'dist', '*sites/*/files/*', 'bin', 'node_modules', 'bower_components', 'cache', 'compiled', 'docs', 'example', 'bundle', 'vendor', '*.md', '*-lock.json', '*.lock', '*bundle*.js', '*build*.js', '.*rc*', '*.json', '*.min.*', '*.map', '*.bak', '*.zip', '*.pyc', '*.class', '*.sln', '*.Master', '*.csproj', '*.tmp', '*.csproj.user', '*.cache', '*.pdb', 'tags*', 'cscope.*', '*.css', '*.less', '*.scss', '*.exe', '*.dll', '*.mp3', '*.ogg', '*.flac', '*.swp', '*.swo', '*.bmp', '*.gif', '*.ico', '*.jpg', '*.png', '*.rar', '*.zip', '*.tar', '*.tar.gz', '*.tar.xz', '*.tar.bz2', '*.pdf', '*.doc', '*.docx', '*.ppt', '*.pptx', ]
if executable('rg')
  let g:gutentags_file_list_command = 'rg --files'
endif
let g:gutentags_trace=0


" Multicursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-e>'
let g:multi_cursor_quit_key='<Esc>'
let g:multi_cursor_quit_key='<Esc>'


let g:tern_request_timeout = 1
let g:tern_request_timeout = 6000
let g:tern#command = ["tern"]
let g:tern#arguments = [" — persistent"]

" let g:neomake_javascript_enabled_makers = ['eslint']

let NERDTreeIgnore = ['_site']

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1



" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gv :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gs :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [c :call CocAction('diagnosticNext')<cr>
nmap <silent> ]c :call CocAction('diagnosticPrevious')<cr>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <leader>rn <Plug>(coc-rename)
nmap <leader><space>d :<C-u>CocList diagnostics<cr>
nmap <leader><space>s :<C-u>CocList -I symbols<cr>

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
let g:coc_node_path = '/Users/lucas/.nvm/versions/node/v16.10.0/bin/node'
let g:coc_global_extensions=['coc-tsserver', 'coc-prettier', 'coc-eslint', 'coc-json']
command! -nargs=0 Prettier :CocCommand prettier.formatFile
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
noremap <F3> :Prettier<CR>
" au BufWritePre * :Prettier

set guitablabel="%N:%M%t"
set showtabline=1

let g:lightline#bufferline#show_number  = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#filename_modifier = ':t'

let g:lightline                  = {}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}


"
"
"
"如果当前文件不在/tmp中,则自动切换当前窗口的pwd到文件所在目录
"https://vim.fandom.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * if expand("%:p:h") !~ '^/tmp' | silent! lcd %:p:h | endif

" Useful mappings for managing tabs
map <leader>tc :tabnew<cr>
map <leader>tq :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>th :tabfirst<cr>
map <leader>tj :tabprevious<cr>
map <leader>tk :tabnext<cr>
map <leader>tl :tablast<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry



" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif


nnoremap <leader>jsd :<C-u>call JSDocAdd()<CR>
nnoremap <leader>dpl $%dd''dd
" <leader>ag to use Silver Search
if executable('ag')
  let g:ackprg = 'aginfolder ~/dev/emp/src ~/dev/empfrt/src  --vimgrep '
endif
cnoreabbrev Ack Ack!
nnoremap <leader>ag :Ack!<Space><C-r><C-w>
nnoremap <leader>gl :!open http://www.google.com/search\?q=<C-r><C-w>
" move cursor anywhere in function body, yaf to yark the full function body
nn yaf [mV]my

" Toggle background transparency, only work in Terminal not in vimr.
" Set background to be transparent by default
hi Normal guibg=NONE ctermbg=NONE
let t:is_transparent = 0
function! Toggle_transparent_background()
  if t:is_transparent == 0
    hi Normal guibg=#111111 ctermbg=black
    let t:is_transparent = 1
  else
    hi Normal guibg=NONE ctermbg=NONE
    let t:is_transparent = 0
  endif
endfunction
nnoremap <leader>tbg :call Toggle_transparent_background()<CR>

" ENTER to open, Ctrl-X: open hori split; Ctrl-V: open vert split; Ctrl-T: open in new Tab
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>t :BTags<CR>
nnoremap <Leader>T :Tags<CR>

let g:vim_svelte_plugin_load_full_syntax = 1

set rnu
set number


" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
" let g:mkdp_markdown_css = expand('~/dev/markdown_themes/han.css')

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']


nnoremap <silent> <C-z> :ToggleTerminal<Enter>
tnoremap <silent> <C-z> <C-\><C-n>:ToggleTerminal<Enter>
tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
set autowriteall


autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

nnoremap <leader>if <Plug>(coc-funcobj-i)

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

" autocmd CursorHoldI * :call <SID>show_hover_doc()
" autocmd CursorHold * :call <SID>show_hover_doc()


highlight SignColumn guibg=#272822
highlight CocFloating guifg=#11f0c3 guibg=#666666


"=== iTerm2->Profile->Default->Keymap: 
" map CMD+x to vim_cuttosystemclipboard
" map CMD+v to vim_pastefromsystemclipboard
" map CMD+a to vim_selectallcontent
" map CMD+SHIFT+s to vim_saveallfiles
" map CMD+s to vim_savecurrentfile
" map CMD+c to vim_copytosystemclipboard
"set clipboard+=unnamed
map vim_savecurrentfile <Esc>:up<CR>
imap vim_savecurrentfile <Esc>:up<CR>
map vim_saveallfiles <Esc>:wa<CR>
imap vim_saveallfiles <Esc>:wa<CR>
map vim_copytosystemclipboard "+y
map vim_cuttosystemclipboard "+x
"CMD+C
"=====================================================
"
"in iTerm Profile->Terminal->Enable mouse reporting.
set mouse=a

map <leader>args :args `grep -rwl -e '<C-r><C-w>' ~/dev/empfrt/src  ~/dev/emp/src`<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nmap <space>e :CocCommand explorer<CR>
map <F8> <C-E>:sleep 2500m<CR>j<F8>
iab clog console.log
iab clogh console.log("===========");

nnoremap ;1 1gt
nnoremap ;2 2gt
nnoremap ;3 3gt
nnoremap ;4 4gt
nnoremap ;5 5gt
nnoremap ;6 6gt
nnoremap ;7 7gt
nnoremap ;8 8gt
nnoremap ;9 9gt


"" if only one buffer is shown and it's name is not 'coc-explorer', then show coc-explorer
"autocmd BufEnter * if (winnr("$") == 1 && &filetype != 'coc-explorer') | exe ':CocCommand explorer --no-focus' | endif
"" if only one buffer named 'coc-explorer' is shown, then exit
"autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif


iab rp req.payload

nnoremap <silent><leader>ww :MacDictPopup<CR>
nnoremap <silent><leader>wd :MacDictWord<CR>
nnoremap <silent><leader>wq :MacDictQuery<CR>
"" let g:vim_mac_dictionary_use_format = 0
"" let g:vim_mac_dictionary_use_app = 1

"" au TextChanged,TextChangedI <buffer> if &readonly == 0 && filereadable(bufname('%')) | silent write | endif
"" au BufRead,BufNewFile * let b:start_time=localtime()
"" au CursorHold * call UpdateFile()
" only write if needed and update the start time after the save
"" function! UpdateFile()
  "" if b:start_time
    "" if ((localtime() - b:start_time) >= 60)
      "" update
      "" let b:start_time=localtime()
    "" else
      " echo "Only " . (localtime() - b:start_time) . " seconds have elapsed so far."
    "" endif
  "" endif
"" endfunction
"" au BufWritePre * let b:start_time=localtime()

source ~/.config/nvim/svelte.vim
