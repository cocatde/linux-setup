## GUI software
- `sudo apt install google-chrome-stable code`
- https://www.jetbrains.com/idea/download/#section=linux
- https://slack.com/intl/en-au/downloads/instructions/ubuntu
- https://support.zoom.us/hc/en-us/articles/204206269-Installing-or-updating-Zoom-on-Linux
- https://learning.postman.com/docs/getting-started/installation-and-updates/#installing-postman-on-linux

## ZSH & TMUX
- `sudo apt install git curl zsh tmux fasd`
- Set zsh as your login shell: `chsh -s $(which zsh)`
- https://github.com/ohmyzsh/ohmyzsh
- https://github.com/zsh-users/antigen
- Clone TPM `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- Nerd fonts: `https://github.com/ryanoasis/nerd-fonts`
  - Download a Nerd Font
  - Unzip and copy to ~/.fonts
  - Run the command fc-cache -fv to manually rebuild the font cache
- Install powerline font
  - `git clone https://github.com/powerline/fonts.git`
  - `cd fonts`
  - `./install.sh`
  - Change font in terminal

## Docker
- https://docs.docker.com/engine/install/ubuntu/
- https://docs.docker.com/engine/install/linux-postinstall/
- `docker-compose` alias
  - Create a file `/bin/docker-compose`
  - Content `docker compose "$@"`
  - `sudo chmod +x /bin/docker-compose`


## Gnome
- https://www.youtube.com/watch?v=lXIb-1_H-mA

## Chinese Input
```bash
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS="@im=fcitx"
/etc/environment
```
- https://shurufa.sogou.com/linux/guide

## Dev

- Java
  - `curl -s "https://get.sdkman.io" | bash`
- Scala
  - https://www.scala-sbt.org/1.x/docs/Installing-sbt-on-Linux.html
- Node
  - https://github.com/nvm-sh/nvm
- AWS
  - https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html


## Terminal
- https://sw.kovidgoyal.net/kitty/

## Neovim
- `sudo add-apt-repository ppa:neovim-ppa/unstable`
- `sudo apt-get install neovim`
- Plugin manager: https://github.com/wbthomason/packer.nvim
- Dependencies:
  - https://github.com/BurntSushi/ripgrep
  - https://github.com/sharkdp/fd
