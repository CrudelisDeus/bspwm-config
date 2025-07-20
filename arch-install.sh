# Install latest update

sudo pacman -Syu

# [1] Xorg

sudo pacman -S xorg-server xorg-xinit --noconfirm

# [2] Fonts

sudo pacman -S gnu-free-fonts --noconfirm

# [3] Install videodriver

sudo pacman -S xf86-video-vesa --noconfirm

# [4] BSPWM and related packages

sudo pacman -S bspwm sxhkd dmenu polybar picom --noconfirm

# [5] Terminal - Kitty install

sudo pacman -S kitty

# Config 

for i in bspwm sxhkd polybar; do
    mkdir -p ~/.config/$i
done

cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
chmod +x ~/.config/bspwm/bspwmrc

mkdir -p ~/.config/sxhkd
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/

mkdir -p ~/.config/polybar
cp /usr/share/doc/polybar/examples/config.ini ~/.config/polybar/config.ini
