# prefix commands with C++:
https://stackoverflow.com/a/56516674/8899796

# prefix command in bash:
https://unix.stackexchange.com/questions/555622/prefix-all-commands-in-shell
```
use_prefix () {
    while read -ra c; do
        "$@" "${c[@]}"
    done
}
```

# another prefix in bash:
https://stackoverflow.com/a/63944846/8899796
```
while read -erp "*git*${PS1@P}" cmd rest; do
        if _=`git help $cmd 2>&-`
                then eval git $cmd "$rest"
                else eval $cmd "$rest"
        fi
done
```

# color printf output;
https://stackoverflow.com/questions/5947742/how-to-change-the-output-color-of-echo-in-linux

# bash prompt into script:
https://stackoverflow.com/a/34688302/8899796
