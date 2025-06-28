set notimeout

let g:WhichKey_ShowVimActions = "true"
let g:WhichKey_DefaultDelay = 500
let g:WhichKey_ProcessUnknownMappings = "false"

" Plugin
let g:WhichKeyDesc_plugins = "<leader>p Plugins"
let g:WhichKeyDesc_plugins_home = "<leader>ph Plugins | Home"

" General
let g:WhichKeyDesc_find = "<leader><leader> General | Find"
let g:WhichKeyDesc_yank_all = "<leader>y General | Yank All"
let g:WhichKeyDesc_close_editor = "<leader>c Close Editor"
let g:WhichKeyDesc_close_other_editors = "<leader>C General | Close Other Editors"
let g:WhichKeyDesc_close_all_editors = "<leader><A-c> General | Close All Editors"
let g:WhichKeyDesc_close_window = "<leader>w General | Close Window"

" Ideamvim
let g:WhichKeyDesc_reload_rc = "<leader>9 General | Reload ideavimrc"

" Navigate
let g:WhichKeyDesc_previous_method = "[m Previous | Method Start"
let g:WhichKeyDesc_next_method = "[m Next | Method Start"
let g:WhichKeyDesc_next_error = "]d General | Next Error"
let g:WhichKeyDesc_previous_error = "[d General | Previous Error"

" Neovim's style LSP
let g:WhichKeyDesc_go_code_action = "gra LSP | Code Action"
let g:WhichKeyDesc_go_reference = "grr LSP | Go to Reference"
let g:WhichKeyDesc_go_rename = "grr LSP | Rename"

" Window
let g:WhichKeyDesc_window_show_error_description_1 = "<C-w><C-d> Window | Show Error"
let g:WhichKeyDesc_window_show_error_description_2 = "<C-w>d Window | Show Error"

" Options
let g:WhichKeyDesc_options = "<leader>o Options"
let g:WhichKeyDesc_options_toggle_relativenumber = "<leader>or Options | Toggle Relative Number"
let g:WhichKeyDesc_options_toggle_zen_mode = "<leader>or Options | Toggle Zen Mode"

" NERDTree
let g:WhichKeyDesc_toggle_nerd_tree = "<leader>e General | Toggle NERDTree"
let g:WhichKeyDesc_focus_nerd_tree = "<leader>e General | Focus NERDTree"

" Git
let g:WhichKeyDesc_git = "<leader>g Git"
let g:WhichKeyDesc_git_next_hunk = "<leader>g] Git | Next Hunk"
let g:WhichKeyDesc_git_prev_hunk = "<leader>g[ Git | Previous Hunk"

" LSP
let g:WhichKeyDesc_lsp = "<leader>l LSP"
let g:WhichKeyDesc_lsp_format = "<leader>lf LSP | Format"
let g:WhichKeyDesc_lsp_structure = "<leader>ls LSP | Structure"

" LSP | Action
let g:WhichKeyDesc_lsp_action = "<leader>la LSP | Actions"
let g:WhichKeyDesc_lsp_action_organize_imports = "<leader>lao LSP Actions | Organize Imports"

" Refactoring
let g:WhichKeyDesc_refactor = "<leader>R Refactor"
let g:WhichKeyDesc_refactor_menu = "<leader>RR Refactor | Menu"
