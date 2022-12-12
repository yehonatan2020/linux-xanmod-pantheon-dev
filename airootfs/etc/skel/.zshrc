
#Display ISO version and distribution information in short
alias version="sed -n 1p /etc/os-release && sed -n 11p /etc/os-release && sed -n 12p /etc/os-release"

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zshhistory
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Custom ZSH Binds
bindkey '^ ' autosuggest-accept


neofetch
version

alias asload="adb sideload"
alias build=". build/envsetup.sh && lunch"
alias clr="clear && neofetch && version"
alias dmesg="dmesg --color=auto --reltime --human --nopager --decode"
alias fastbootd="fastboot reboot fastboot"
alias flashbin="fastboot flash oem_a binaries.img && fastboot flash oem_b binaries.img"
alias flash-seine="fastboot flash boot boot.img && fastboot flash dtbo dtbo.img && fastboot flash vbmeta vbmeta.img && fastboot flash system system.img && fastboot flash vbmeta_system vbmeta_system.img && fastboot flash product product.img && fastboot flash vendor vendor.img"
alias flashudata="fastboot flash userdata userdata.img"
alias free="free -mht"
alias grep="grep --color=auto"
alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias flash-kirin="fastboot flash boot boot.img && fastboot flash vendor vendor.img && fastboot flash system system.img"
alias ls="ls -Fa"
alias makeiso="sudo mkarchiso -v . && cd out && ls"
alias paydump="payload-dumper-go"
alias payload-dumper="payload-dumper-go"
alias repo-update="./repo_update.sh"
alias rs="repo --no-pager --color=always sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune"
alias seine-flash="fastboot flash boot boot.img && fastboot flash dtbo dtbo.img && fastboot flash vbmeta vbmeta.img && fastboot flash system system.img && fastboot flash vbmeta_system vbmeta_system.img && fastboot flash product product.img && fastboot flash vendor vendor.img"
alias rupdate="./repo_update.sh"
alias ss="gnome-screenshot -i"
alias tree="tree --dirsfirst -C"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias yay="paru --color=auto"
alias youtube-dl="cd ~/Videos && youtube-dl"
alias gclone="git clone"

#Pacman Shortcuts
alias pacman="pacman --color=auto"
alias pacsync="sudo pacman -Syyy"
alias pacinstall="sudo pacman -S"
alias pacupdate="sudo pacman -Syyu"
alias pacsearch="sudo pacman -Ss"
alias pacsearch-local="sudo pacman -Qs"
alias pac-pkg-info="sudo pacman -Qi"
alias paclocal-install="sudo pacman -U"
alias pac-clr-cache="sudo pacman -Scc"
alias pacunlock="sudo rm /var/lib/pacman/db.lck"
alias pacremove="sudo pacman -R"
alias pacautoremove="sudo pacman -Rns"

export PATH="$PATH:~/depot_tools"
export PATH=~/bin:$PATH
#export PATH=~/toolchains/proton-clang/bin:$PATH
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
export WIDELANDS_NINJA_THREADS=2
export WITHOUT_CHECK_API=true
export AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip  CC="clang -m32" CXX="g++ -m32"
export BUILD_USES_BUILD_HOST_SHARED_LIBRARY=true
#export CC="gcc -m32" 
#export CXX="g++ -m32"


 
