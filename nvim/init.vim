set list
syntax enable
set showcmd
set mouse=a
set termguicolors
set number
set numberwidth=5
set tabstop=4
set shiftwidth=4
set showmatch
set guicursor=n-v-c-sm:block,i-ci-ve:ver25-nCursor-blinkwait10-blinkon50-blinkoff10

set list

so ~/.config/nvim/plugins.vim
so ~/.config/nvim/maps.vim

set completeopt=menuone,noinsert,noselect

if has('nvim-0.5')
	augroup lsp
		au!
		au FileType scala,sbt lua require('metals').initialize_or_attach({})
	augroup end
endif
