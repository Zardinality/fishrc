# this basically only runs once, since Fish persists Universal vars across sessions
for path in /usr/local/share/npm/bin /usr/local/pear/bin $HOME/bin /usr/local/bin
    if not contains $path $fish_user_paths
        # append path to var
        set -U fish_user_paths $fish_user_paths $path
    end
end
