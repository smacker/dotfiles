# Smacker's dotfiles

Updated.

### Contents:

#### Configs

- Bash: `.bashrc`, `.bash_profile`, `.bash_prompt`, `.exports`, `.aliases`
  - Use `.extra` & `.path` for local changes
- Git: `.gitconfig`, `.gitignore`
- Vim: `.vimrc`, `.vim/*`

#### Scripts

- `macos.sh`: change some defaults for macOS
- `brew.sh`: install command-line tools
- `cask.sh`: install applications
- `bootstrap.sh`: setup new mac

### Install

- `xcode-select --install`
- ???
- `./bootstrap.sh`

### Notes

#### Sync apps

- 1password
- Firefox
- Chrome
- Dropbox
- VSCode (install `shan.code-settings-sync` extension first)

#### Laptop with *wrong* keyboard

```
brew cask install karabiner-elements
```

#### TODO

- review vim config. it's way too old

### Acknowledges

Highly inspired by [@mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
