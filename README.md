# Smacker's dotfiles

### Install

- `xcode-select --install`
- install brew
- `./bootstrap.sh`

### Set bash as default shell

```bash
# get the full path to bash from brew
echo "$(brew --prefix)/bin/bash"
# add it to the list of allowed shells
vim /etc/shells
# change the default for current user
chsh -s <path>
```

#### Laptop with *wrong* keyboard

```
brew cask install karabiner-elements
```

#### TODO

- review vim config. it's way too old

### Acknowledges

Highly inspired by [@mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
