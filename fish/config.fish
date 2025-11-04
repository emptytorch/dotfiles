set -g fish_greeting

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
