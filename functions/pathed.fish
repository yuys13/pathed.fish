function pathed --description 'Edit fish_user_paths'
    set -l editor
    if set -q VISUAL
        set editor $VISUAL
    else if set -q EDITOR
        set editor $EDITOR
    else if type vi >/dev/null
        set editor vi
    else
        echo 'Set your editor to $VISUAL or $EDITOR'
        return 3
    end

    set -l tempfile (mktemp)

    for p in $fish_user_paths
        echo $p >>$tempfile
    end

    if not eval $editor $tempfile
        echo "edit failed"
        return 4
    end

    set -l edited
    for p in (cat $tempfile)
        set edited $edited $p
    end

    set -U fish_user_paths $edited

    echo '$fish_user_paths'
    echo $fish_user_paths
    echo '$PATH'
    echo $PATH

    rm $tempfile
end
