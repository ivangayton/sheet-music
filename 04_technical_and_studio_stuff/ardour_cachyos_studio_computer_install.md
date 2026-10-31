# Install CachyOS

Prep an ISO, follow [CachyOS install guide](https://wiki.cachyos.org/installation/installation_on_root/)
- Don't forget the manual partitioning (boot partition and a root partition in btrfs).
- I used the KDE Plasma desktop, and will use an X11 session to accommodate Ardour later

## Install X11 session for Ardour compatibility
```sudo pacman -Syu plasma-x11-session kwin-x11 xorg-server``` then reboot into the X11 session (session option is in the lower left corner of the screen; where it says Desktop session: Plasma (wayland) click and choose Plasma (x11))
- Note: the xorg-server is necessary to avoid a black screen after choosing the X11 session at login. This could be a problem in the future as later versions of KDE might not even support that at all (maybe need to bail on KDE at some poitn which would be a shame but whatever)
- On my monitor I had to immediately set the Display scaling to 200% for things to be visible.

# Install audio stuff
[Morten Mosgaard wrote a nice blog on setting up digital audio on Cachy.](https://mortenmosgaard.dk/how-i-setup-cachy-os-arch-linux-for-music-production/). I'm following that.





