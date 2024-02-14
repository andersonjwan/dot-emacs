#!/usr/bin/env bash
# Install Emacs configuration files.
# @author "Jacob Anderson <andersonjwan@gmail.com>"

# Inspired by the following work:
# https://github.com/mathiasbynens/dotfiles

cd "$(dirname "${BASH_SOURCE}")";

# Update set of dotfiles and execute.
function doIt() {
    rsync --exclude "install.sh" \
          --exclude ".git/" \
          --exclude "README.md" \
          --archive --verbose --mkpath --human-readable . ~/.emacs.d/;
}

# Interface to install.
#
# @option --force -f Force the boostrap process carelessly
if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files under ~/.emacs.d/ directory. Are you sure (y/n) " -n 1;
    echo "";

    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
