export EDITOR=/usr/bin/vim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"


# add custom scripts support
export CUSTOM_SCRIPT_ROOT="$HOME/.local/scripts"
export PATH="$CUSTOM_SCRIPT_ROOT:$PATH"

# add pyenv support
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

