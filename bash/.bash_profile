# load shell dotfiles
for file in ~/dotfiles/bash/.{exports,aliases,functions}; do
        [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# add homebrew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
        source $(brew --prefix)/etc/bash_completion;
fi

# for z
. /usr/local/etc/profile.d/z.sh
