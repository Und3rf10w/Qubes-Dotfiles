# Qubes dotfiles
A small collection of my dotfiles for Qubes 4.1

Configures i3-gaps, polybar, rofi, and zsh on dom0.

# Installation
1. Run `01_fix_usernames.sh` (not as root)
2. Install the fonts in the `usr` directory. Basically just move/copy the dir `usr/share/fonts/meslo` -> `/usr/share/fonts/meslo/`
3. Once the font is placed, run `sudo fc-cache -f -n` (dom0)
4. Run `git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"` to install [zprezto](https://github.com/sorin-ionescu/prezto) apprpriately. You might have to do some trickery to get that to happen properly on dom0. Or just copy it over from a dispVM.
5. Copy over the dotfiles you want to your home directory. I use `powerlevel10k`, change [this line](https://github.com/sorin-ionescu/prezto/blob/master/runcoms/zpreztorc#L133) in `~/.zprofile` to be:

```
zstyle ':prezto:module:prompt' theme 'powerlevel10k'
```
6. Review `.config/i3/config` for my keybinds

# Requirements
You should already have rofi, polybar, i3-gaps, i3-lock, xfce4-screenshooter
