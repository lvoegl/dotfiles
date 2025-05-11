# dotfiles

## Zsh
### Files
- [.zshrc](.zshrc)
### Requirements
```
apt install -y \
    zsh \
    zplug \
    fzf \
    neofetch
```

## Git
### Files
- [.gitconfig](.gitconfig)
- [.gitignore](.dotfiles/git/.gitignore)
### Notes
- `[user]` in [.gitconfig](.gitconfig) must be replaced

## Plasma
### Files
- [breezerc](.config/breezerc)
- [kcminputrc](.config/kcminputrc)
- [kdeglobals](.config/kdeglobals)
- [konsolerc](.config/konsolerc)
- [krunnerrc](.config/krunnerrc)
- [ksplashrc](.config/ksplashrc)
- [kxkbrc](.config/kxkbrc)
- [plasma-org.kde.plasma.desktop-appletsrc](.config/plasma-org.kde.plasma.desktop-appletsrc)
- [lvoegl.colorscheme](.local/share/konsole/lvoegl.colorscheme)
- [lvoegl.profile](.local/share/konsole/lvoegl.profile)
### Notes
- Replace `ID_XYZ` in [plasma-org.kde.plasma.desktop-appletsrc](.config/plasma-org.kde.plasma.desktop-appletsrc) with output of command `qdbus org.kde.ActivityManager /ActivityManager/Activities CurrentActivity`
### Requirements
```
apt install -y \
    breeze \
    konsole
```

## Other
### Files
- [decrypt_pdfs](.dotfiles/bin/decrypt_pdfs)
### Requirements
```
apt install -y \
    qpdf
```
