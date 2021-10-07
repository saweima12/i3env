#/bin/bash 
local_dir="$HOME/.local"
config_dir="$HOME/.config"

# :::: Local Extension ::::
read -p "Do you wish to restore tool scripts?" yn
case $yn in
  [Yy]* ) 
    echo "::: Info ::: Copy .local/* to $HOME/.local" 
    cp -r ./.local/*       $local_dir
		;;
  * ) echo "::: No ::: to next"
  ;;
esac

read -p "Do you wish to restore profile?" yn
case $yn in
  [Yy]* ) 
    echo "::: Info ::: Copy profiles to $HOME" 
    cp ./.profile $HOME
		cp ./.xprofile $HOME
		cp ./.common_ext $HOME
		cp ./.tmux.conf* $HOME
    cp ./.Xresource* $HOME
    ! grep -sq "common_ext" "$HOME/.zshrc" \
		   && echo "[[ -f ~/.common_ext ]] && . ~/.common_ext" >> $HOME/.zshrc  \
		   && echo '::: Info ::: :add "[[ -f ~/.common_ext ]] && . ~/.common_ext" to $HOME/.zshrc'
	  ! grep -sq "common_ext" "$HOME/.bashrc" \
		   && echo "[[ -f ~/.common_ext ]] && . ~/.common_ext" >> $HOME/.bashrc  \
		   && echo '::: Info ::: :add "[[ -f ~/.common_ext ]] && . ~/.common_ext" to $HOME/.bashrc'
		;;
  * ) echo "::: No ::: to next"
  ;;
esac



# :::: Configure ::::

read -p "Do you wish to restore i3 configure?" yn
case $yn in
  [Yy]* ) 
    echo "::: Info ::: Copy .config/i3 & .config/i3blocks to $HOME/.config" 
    cp -r ./.config/i3       $config_dir
		cp -r ./.config/i3blocks $config_dir
		;;
  * ) echo "::: No ::: to next"
  ;;
esac

read -p "Do you wish to restore jgmenu configure?" yn
case $yn in
  [Yy]* ) 
    echo "::: Info ::: Copy .config/jgmenu to $HOME/.config" 
    cp -r ./.config/jgmenu $HOME/.config 
		;;
  * ) echo "::: No ::: to next"
  ;;
esac


read -p "Do you wish to restore picom configure?" yn
case $yn in
  [Yy]* ) 
    echo "::: Info ::: Copy .config/picom to $HOME/.config" 
    cp -r ./.config/picom $HOME/.config 
		;;
  * ) echo "::: No ::: to next"
  ;;
esac


read -p "Do you wish to restore dunst configure?" yn
case $yn in
  [Yy]* ) 
    echo "::: Info ::: Copy .config/dunst to $HOME/.config" 
    cp -r ./.config/dunst $HOME/.config 
		;;
  * ) echo "::: No ::: to next"
  ;;
esac


read -p "Do you wish to restore autorandr configure?" yn
case $yn in
  [Yy]* ) 
    echo "::: Info ::: Copy .config/autorandr to $HOME/.config" 
    cp -r ./.config/autorandr $HOME/.config 
		;;
  * ) echo "::: No ::: to next"
  ;;
esac
