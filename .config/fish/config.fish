fish_vi_key_bindings
activate-venv-on-pwd-change
zoxide init fish | source
starship init fish | source

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# if test -f /Users/etreandev/miniconda3/bin/conda
#     eval /Users/etreandev/miniconda3/bin/conda "shell.fish" hook $argv | source
# end
# <<< conda initialize <<<

# Added by Antigravity CLI installer
set -gx PATH "/Users/etreandev/.local/bin" $PATH
