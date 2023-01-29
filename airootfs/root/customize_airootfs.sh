#rm -rf /usr/lib/modules-load.d/nvidia-utils.conf
rm -rf usr/lib/modprobe.d/nvidia-utils.conf
sed -i 's/HOOKS=(base udev*/& plymouth/' /etc/mkinitcpio.conf 
sudo plymouth-set-default-theme -R arch-glow 
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate chaotic
sudo pacman -Sy
sudo pacman --noconfirm -U root/abootimg/abootimg-0.6-1-x86_64.pkg.tar.lzo && rm -rf root/abootimg
sudo pacman --noconfirm -U root/android-apktool/android-apktool-2.6.1-1-any.pkg.tar.lzo && rm -rf root/android-apktool
sudo pacman --noconfirm -U root/android-sdk-platform-tools/android-sdk-platform-tools-33.0.3-1-x86_64.pkg.tar.lzo && rm -rf root/android-sdk-platform-tools
sudo pacman --noconfirm -U root/android-udev-git/android-udev-git-20220903.r3.gac87fda-1-any.pkg.tar.lzo && rm -rf root/android-udev-git
sudo pacman --noconfirm -U root/autojump/autojump-22.5.3-9-any.pkg.tar.lzo && m -rf root/autojump
sudo pacman --noconfirm -U root/dxvk-bin/dxvk-bin-1.10.3-1-x86_64.pkg.tar.lzo && rm -rf root/dxvk-bin
sudo pacman --noconfirm -U root/git-extras/git-extras-6.4.0-1-any.pkg.tar.lzo && rm -rf root/git-extras
sudo pacman --noconfirm -U root/lib32-ncurses5-compat-libs/lib32-ncurses5-compat-libs-6.3-1-x86_64.pkg.tar.lzo && rm -rf root/lib32-ncurses5-compat-libs
sudo pacman --noconfirm -U root/payload-dumper-go-bin/payload-dumper-go-bin-1.2.2-1-x86_64.pkg.tar.lzo && rm -rf root/payload-dumper-go-bin
sudo pacman --noconfirm -U root/ttf-ms-win11-auto/ttf-ms-win11-auto-10.0.22621.382-1-any.pkg.tar.lzo && rm -rf root/ttf-ms-win11-auto
sudo pacman --noconfirm -U root/video-downloader-git/video-downloader-git-0.10.10.r3.g7383bcc-1-any.pkg.tar.lzo && rm -rf root/video-downloader-git
sudo pacman --noconfirm -U root/zramd/zramd-0.9.2-1-any.pkg.tar.lzo && rm -rf root/zramd
sudo pacman --noconfirm -U root/alg-cala-config-xanmod/alg-cala-config-xanmod-22.07-4-any.pkg.tar.lzo && rm -rf root/alg-cala-config-xanmod
sudo pacman --noconfirm -U root/newflasher-git/newflasher-git-194-1-x86_64.pkg.tar.lzo && rm -rf root/newflasher-git
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/avahi-discover.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/avahi-discover.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/bssh.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/bssh.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/stoken-gui.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/stoken-gui.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/stoken-gui-small.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/stoken-gui-small.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/bvnc.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/bvnc.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/cmake-gui.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/cmake-gui.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/qv4l2.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/qv4l2.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/qvidcap.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/qvidcap.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/htop.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/htop.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/vim.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/vim.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/designer.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/designer.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/assistant.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/assistant.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/linguist.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/linguist.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/qdbusviewer.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/qdbusviewer.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/org.gnome.gedit.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/org.gnome.gedit.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/lstopo.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/lstopo.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/guake-prefs.desktop
sudo sed -i -e '$aNotShowIn=Gnome;KDE;' /usr/share/applications/guake-prefs.desktop
sudo systemctl enable hv_fcopy_daemon.service
sudo systemctl enable hv_kvp_daemon.service
sudo systemctl enable hv_vss_daemon.service
sudo systemctl enable tlp.service
sudo systemctl enable fstrim.timer
sudo systemctl enable earlyoom.service 
sudo systemctl enable cronie.service 
sudo systemctl enable apparmor.service 
sudo systemctl enable lightdm.service 
sudo systemctl enable zramd.service
sudo gpasswd -a liveuser autologin
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman --noconfirm -Syu 
sudo pacman --noconfirm -S ncurses5-compat-libs openssl-1.1 lib32-vulkan-icd-loader gtk-engine-murrine
echo "blacklist elan_i2c" >> /etc/modprobe.d/blacklist.conf
