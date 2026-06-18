# Briefly
When script runs it adds a prefix to each entered command.
For example:
```
$ prefix git> log == $ git log
$ prefix git> status == $ git status
$ prefix git> diff == $ git diff
$ prefix git> show == $ git show
```

When the script is started it adds to CLI prompt:
- "prefix **\<entered prefix\>**" (for example, "prefix **git**"), where **\<entered prefix\>** is the first argument;
- **NO PREFIX** if the first argument is empty;
to visualize that the script is running and adds the prefix to what you enter in CLI.

In order to exit from the script inter "exit".

It works in bash only(?).

# Promo
If you are like me, who don't like and is lazy enough for continuos repeating a command typing, this script can be helpful for you. Just run the script with the argument:
```
./prefix_mode_for_terminal git
./prefix_mode_for_terminal "sudo docker"
./prefix_mode_for_terminal "sudo apt"
```
and forget about re-typing "git ", "sudo docker ", "sudo apt " or any other boring prefix.

# Further development:
- add autocomplete for the prefix.
