if [[ -z $DISPLAY && $(tty) = /dev/tty1 ]]; then
	exec startx
fi
export EDITOR=/usr/bin/nvim
export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export GTK_SCALE=1.5
export PATH="$PATH:/home/currypseudo/.gem/ruby/2.6.0/bin"
export PATH="$PATH:/home/currypseudo/.yarn/bin"
export PATH="$PATH:/home/currypseudo/.local/bin"
export PATH="$PATH:/home/currypseudo/.cargo/bin"
export PATH="$PATH:/home/currypseudo/.config/script"
export PATH="$PATH:/home/currypseudo/.luarocks/bin"
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export GLFW_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
