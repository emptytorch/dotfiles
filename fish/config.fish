set -gx EDITOR nvim
set -g fish_greeting

set -gx PATH $HOME/.cargo/bin $PATH
set -gx PATH $HOME/.config/emacs/bin $PATH
set -gx PATH $HOME/go/bin $PATH

function fish_prompt
    set_color brblack
    echo -n "["(date "+%H:%M")"] "
    set_color yellow
    echo -n (prompt_pwd)
    set_color green
    printf '%s ' (__fish_git_prompt)
    set_color red
    echo -n '| '
    set_color normal
end
