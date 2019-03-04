#!/bin/bash

action=$(printf " | lovelace\n | gruvbox" | rofi -dmenu -i -p "Theme" | awk '{ print $2}')

case "$action" in
	lovelace)
		ln -sf ~/.config/rofi/themes/lovelace.rasi ~/.config/themes/theme-rofi.rasi
		cat ~/.Xresources.default ~/.config/themes/lovelace/lovelace > ~/.Xresources
		yq r ~/.config/alacritty/alacritty.default.yml > ~/.config/alacritty/alacritty.yml
		cat ~/.config/alacritty/themes/lovelace.yml | yq w -i -s - ~/.config/alacritty/alacritty.yml
	;;
	gruvbox)
		ln -sf ~/.config/rofi/themes/gruvbox.rasi ~/.config/themes/theme-rofi.rasi
		cat ~/.Xresources.default ~/.config/themes/gruvbox/gruvbox > ~/.Xresources
		yq r ~/.config/alacritty/alacritty.default.yml > ~/.config/alacritty/alacritty.yml
		cat ~/.config/alacritty/themes/gruvbox.yml | yq w -i -s - ~/.config/alacritty/alacritty.yml
	;;
	*)
		echo "Usage: $0 <theme>"
		exit 2
esac

xrdb ~/.Xresources
i3-msg reload
~/.config/polybar/launch.sh 2>> ~/.config/scripts/.polybar.log &
notify-send -a "THEME" "theme changed to $action"

exit 0

