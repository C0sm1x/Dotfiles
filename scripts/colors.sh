#!/bin/bash


source ~/.cache/wal/colors.sh

echo -e "[colors]\n
foreground = $foreground\n
background = $background\n
cursor = $cursor\n
highlight = #F5F5F5\n
[options]\n
    resize_grip = false\n
    scroll_on_output = false\n
    scroll_on_keystroke = true\n
    audible_bell = false\n
    visible_bell = false\n
    mouse_autohide = true\n
    allow_bold = true\n
    dynamic_title = true\n
    urgent_on_bell = true\n
    clickable_url = true\n
    font = Hack 20\n
    scrollback_lines = 1000\n
    search_wrap = true\n
    #icon_name = terminal\n
    #geometry = 640x480\n

    # "system", "on" or "off"\n
    cursor_blink = on\n

    # "block", "underline" or "ibeam"\n
    cursor_shape = block\n

    # $BROWSER is used by default\n
    browser = firefox\n

    # word characters used for word selection\n
    # (default if unset: all graphic non-punctuation/space characters)\n
    #word_chars = -A-Za-z0-9,./?%&#:_=+@~\n" > ~/.config/termite/config

echo -e "st.background: $background\n
        st.foreground: $foreground" > ~/.Xresources-st
