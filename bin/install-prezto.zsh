#!/bin/zsh
setopt EXTENDED_GLOB
#for rcfile in "${ZDOTDIR:-$HOME}"/dotfiles/prezto/runcoms/^README.md(.N); do
#    [[ $(basename $rcfile) == "zshrc" || $(basename $rcfile) == "zpreztorc" ]] || (echo -n "  linking #$rcfile  " && ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}")
#done

echo 'Linking config files from zpresto'
echo '================================='
for rcfile in "${ZDOTDIR:-$HOME}"/.dotfiles/prezto/runcoms/^README.md(.N); do
    #echo "$rcfile was linked to ${ZDOTDIR:-$HOME}/.${rcfile:t}"
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo 'Setting /bin/zsh as default shell'
echo '================================='
chsh -s /bin/zsh

#echo -n "  linking dotfiles/.zshrc  " && ln -s ~/dotfiles/.zshrc ~/.zshrc && echo ""
#echo -n "  linking dotfiles/.zpreztorc  " && ln -s ~/dotfiles/.zpreztorc ~/.zpreztorc && echo ""

exit 0
