xrdb -I$HOME ~/.Xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec i3
# exec openbox-session
# exec startxfce4
# exec cinnamon-session
# exec gnome-session
# exec startkde

# Start BSPWM
# sxhkd -c .config/bspwm/sxhkd/sxhkdrc &
# source ~/.zshrc
# xrdb -merge ~/.Xresources
# xsetroot -cursor_name left_ptr
# exec bspwm
# exec awesome
#
wal -i "$(< "${HOME}/.cache/wal/wal")"
