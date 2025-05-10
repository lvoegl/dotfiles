# dotfiles

## Requirements
```
apt install -y \
    zsh \
    zplug \
    fzf
```

## Notes
- `[user]` in [.gitconfig](.gitconfig) must be replaced
- [.config](.config) and [.local/share](.local/share) currently only contain KDE Plasma configuration files
- [measure_lux](.dotfiles/bin/measure_lux) requires `python3-hid` apt package
- Replace `ID_XYZ` in [plasma-org.kde.plasma.desktop-appletsrc](.config/plasma-org.kde.plasma.desktop-appletsrc) with output of command `qdbus org.kde.ActivityManager /ActivityManager/Activities CurrentActivity`
