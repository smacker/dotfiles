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

### List of apps from AppStore

- Microsoft To Do
- Toggl Track
- Coin Tick (https://github.com/alecananian/osx-coin-ticker)

### List of apps from Github

- Mochi Diffusion

#### Laptop with _wrong_ keyboard

```
brew cask install karabiner-elements
```

### Acknowledges

Highly inspired by [@mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
