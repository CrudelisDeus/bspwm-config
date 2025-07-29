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

sudo pacman -S kitty --noconfirm

# Config 

dirs_config=(bspwm sxhkd polybar)

for i in "${dirs_config[@]}"; do 
    mkdir -p ~/.config/$i
    cp -r ./$i/* ~/.config/$i/
done

## config x init
cp -R ./xinit/.* ~/

## 

chmod +x ~/.config/bspwm/bspwmrc
chmod +x ~/.config/polybar/launch.sh