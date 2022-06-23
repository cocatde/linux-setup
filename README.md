## Make dnf faster
add `max_parallel_downloads=10` to /etc/dnf/dnf.conf

## Gnome Tweak
- `sudo dnf install gnome-tweaks`
- Change capslock to control


## GUI software
### Chrome
```
dnf check-update
sudo dnf install google-chrome-unstable
```

### VS code

```
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf install code
```
### Installastion not covered by dnf
- slack
- idea


## bash setup
- Clone new dotfile and run `setup.sh`
- Clone TPM `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- Install tmux plugins `prefix + I` (capital I)

### ZSH

```
sudo dnf install zsh
```
- https://github.com/ohmyzsh/ohmyzsh
- Set zsh as your login shell: `chsh -s $(which zsh)`
- Antigen https://github.com/zsh-users/antigen
- fzf `sudo dnf install fzf`
- fasd https://github.com/clvv/fasd

## Driver
- `sudo dnf install akmod-nvidia`


## Docker
- https://docs.docker.com/engine/install/fedora/

## Chinese Input
- You cannot do that for Fedora, sogou input doesn't support