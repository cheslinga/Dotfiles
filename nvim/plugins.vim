call plug#begin('~/.config/nvim/plugs')
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	
	Plug 'Olical/conjure', {'tag': 'v4.19.0'}
	Plug 'scalameta/nvim-metals'

	Plug 'jiangmiao/auto-pairs'
	Plug 'machakann/vim-sandwich'
		
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'

	Plug 'ojroques/nvim-hardline'
call plug#end()

set completeopt=menuone,noselect

lua<<EOF
require'lspconfig'.hls.setup{}
require'lspconfig'.metals.setup{}
require'lspconfig'.rust_analyzer.setup{}

EOF

lua << EOF
require('hardline').setup {
  bufferline=true,
  theme = 'gruvbox',   -- change theme
  sections = {         -- define sections
    {class = 'mode', item = require('hardline.parts.mode').get_item},
    {class = 'high', item = require('hardline.parts.git').get_item, hide = 80},
    '%<',
    {class = 'med', item = require('hardline.parts.filename').get_item},
    {class = 'med', item ='%='},
    {class = 'low', item = require('hardline.parts.wordcount').get_item, hide = 80},
    {class = 'error', item = require('hardline.parts.lsp').get_error},
    {class = 'warning', item = require('hardline.parts.lsp').get_warning},
    {class = 'warning', item = require('hardline.parts.whitespace').get_item},
    {class = 'high', item = require('hardline.parts.filetype').get_item, hide = 80},
    {class = 'mode', item = require('hardline.parts.line').get_item},
  }
}
EOF
