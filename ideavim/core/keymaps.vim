" Plugin
nnoremap <leader>ph :action WelcomeScreen.Plugins<CR>

" General
nnoremap <leader><leader> :action SearchEverywhere<CR>
nnoremap <leader>c :action CloseEditor<CR>
nnoremap <leader>C :action CloseAllEditorsButActive<CR>
nnoremap <leader><A-c> :action CloseAllEditors<CR>

" Ideamvim
nnoremap <leader>9 :action IdeaVim.ReloadVimRc.reload<CR>

" Navigate
unmap <Left>
unmap <Right>
unmap <Up>
unmap <Down>
nnoremap H :tabprevious<CR>
nnoremap L :tabnext<CR>
nnoremap [m :action MethodUp<CR>
nnoremap ]m :action MethodDown<CR>
nnoremap ]d :action GotoNextError<CR>
nnoremap [d :action GotoPreviousError<CR>

" Ideavim
nnoremap <leader>9 :action IdeaVim.ReloadVimRc.reload<CR>

" Neovim's style LSP
nnoremap gra :action ShowIntentionActions<CR>
nnoremap grr :action FindUsages<CR>
nnoremap grn :action RenameElement<CR>

" Window
nnoremap <C-w><C-d> :action ShowErrorDescription<CR>
nnoremap <C-w>d :action ShowErrorDescription<CR>

" Options
" toggle line number relative
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber number
  endif
endfunction
nnoremap <leader>or :call NumberToggle()<CR>
nnoremap <leader>oz :action ToggleDistractionFreeMode<CR>

" NERDTree
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeFocus<CR>

" Git
nnoremap <leader>g] :action JumpToLastChange<CR>
nnoremap <leader>g[ :action JumpToNextChange<CR>

" LSP
nnoremap <leader>lf :action ReformatCode<CR>
nnoremap <leader>ls :action FileStructurePopup<CR>

" LSP | Action
nnoremap <leader>lao :action OptimizeImports<CR>

" Refactoring
nnoremap <leader>RR :action Refactorings.QuickListPopupAction<CR>
