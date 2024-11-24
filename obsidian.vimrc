"""""""""""""""""""""""
" Leader
""""""""""""""""""""""
" let mapleader=,
" can't set leaders in Obsidian vim, so the key just has to be used consistently.
" However, it needs to be unmapped, to not trigger default behavior: https://github.com/esm7/obsidian-vimrc-support#some-help-with-binding-space-chords-doom-and-spacemacs-fans
" unmap , need this for seek
unmap <Space>

""""""""""""""""""""""
" Navigation
""""""""""""""""""""""
vmap j gj
vmap k gk

exmap back obcommand app:go-back
exmap forward obcommand app:go-forward
nmap <C-o> :back<cr>
nmap <C-i> :forward<cr>

" INFO doesn't work in reading mode: https://github.com/timhor/obsidian-editor-shortcuts/issues/20
exmap nextHeading obcommand obsidian-editor-shortcuts:goToNextHeading
exmap prevHeading obcommand obsidian-editor-shortcuts:goToPrevHeading
nnoremap <C-j> :nextHeading<cr>
nnoremap <C-k> :prevHeading<cr>

exmap gotoHeading obcommand obsidian-another-quick-switcher:header-floating-search-in-file
nnoremap gh :gotoHeading<cr>
exmap quickSwitcher obcommand obsidian-another-quick-switcher:search-command_recent-search
nnoremap go :quickSwitcher<cr>
exmap quickSwitcher2hoplink obcommand obsidian-another-quick-switcher:search-command_2-hop-link-search
nnoremap g2 :quickSwitcher2hoplink<cr>
exmap quickSwitcherbacklink obcommand obsidian-another-quick-switcher:backlink
nnoremap gb :quickSwitcherbacklink<cr>

exmap dailyjournal obcommand daily-notes
nnoremap <Space>j :dailyjournal<cr>
exmap dailyjournallist obcommand daily-notes-editor:open-daily-note-editor
nnoremap <Space>l :dailyjournallist<cr>
noremap gR source

" [g]oto definition / link (shukuchi makes it forward-seeking)
exmap followNextLink obcommand shukuchi:open-link
nnoremap gx :followNextLink<cr>
nnoremap ga :followNextLink<cr>
nnoremap gd :followNextLink<cr>


""""""""""""""""""""""
" Clipboard
""""""""""""""""""""""
" yank to system clipboard
set clipboard=unnamed

" Y consistent with D and C to the end of line
nnoremap Y y$

""""""""""""""""""""""
" Folding
""""""""""""""""""""""
" Emulate Original Folding command https://vimhelp.org/fold.txt.html#fold-commands
exmap unfoldall obcommand editor:unfold-all
exmap togglefold obcommand editor:toggle-fold
exmap foldall obcommand editor:fold-all
exmap foldless obcommand editor:fold-less
exmap foldmore obcommand editor:fold-more
nmap zo :togglefold<cr>
nmap zc :togglefold<cr>
nmap za :togglefold<cr>
nmap zm :foldmore<cr>
nmap zM :foldall<cr>
nmap zr :foldless<cr>
nmap zR :unfoldall<cr>

""""""""""""""""""""""
" Search
""""""""""""""""""""""
" Find Mode (by mirroring American keyboard layout on German keyboard layout)
nnoremap - /

" <Esc> clears highlights
nnoremap <Esc> :nohl<cr>

" Another Quick Switcher ripgrep-search
" somewhat close to Telescope's livegrep
exmap liveGrep obcommand obsidian-another-quick-switcher:grep
nnoremap gl :liveGrep<cr>

" Obsidian builtin Search & replace
exmap searchReplace obcommand editor:open-search-replace
nnoremap <Space>s :searchReplace<cr>

""""""""""""""""""""""
" Editing
""""""""""""""""""""""

" undo/redo consistently on one key
nnoremap U <C-r>

" Add Blank Line above/below
nnoremap = mzO<Esc>`z
nnoremap _ mzo<Esc>`z


""""""""""""""""""""""""""""
" Markdown/Obsidian specific
""""""""""""""""""""""""""""
" TODO: figure this out
" markdown tasks
" exmap checkList obcommand editor:toggle-checklist-status
" nnoremap ,x :checkList

""""""""""""""""""""""
" Tabs, Splits & Alt-file
""""""""""""""""""""""

exmap closeWindow obcommand workspace:close-window
nnoremap ZZ :closeWindow<cr>

exmap focusRight obcommand editor:focus-right
nmap <C-w>l :focusRight<cr>

exmap focusLeft obcommand editor:focus-left
nmap <C-w>h :focusLeft<cr>

exmap focusTop obcommand editor:focus-top
nmap <C-w>k :focusTop<cr>

exmap focusBottom obcommand editor:focus-bottom
nmap <C-w>j :focusBottom<cr>

exmap vsplit obcommand workspace:split-vertical
nmap <C-w>v :vsplit<cr>

exmap split obcommand workspace:split-horizontal
nmap <C-w>s :split<cr>

exmap closePane obcommand workspace:close
nmap <C-w>q :closePane<cr>

" Tabs
exmap nextTab obcommand workspace:next-tab
exmap prevTab obcommand workspace:previous-tab
nnoremap gt :nextTab<cr>
nnoremap gT :prevTab<cr>

" Alt Buffer (emulates `:buffer #`)
" i have no idea what this does
" exmap altBuffer obcommand grappling-hook:alternate-note
" nnoremap <CR> :altBuffer


""""""""""""""""""""""
" Toggles
""""""""""""""""""""""
exmap toggleLeftSideBar obcommand app:toggle-left-sidebar
nnoremap <Space>tl :toggleLeftSideBar<cr>
exmap toggleRightSideBar obcommand app:toggle-right-sidebar
nnoremap <Space>tr :toggleRightSideBar<cr>
exmap toggleMinimalFocus obcommand obsidian-minimal-settings:toggle-minimal-focus-mode
nnoremap <Space>tf :toggleMinimalFocus<cr>
