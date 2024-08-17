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

### Setting up gpg to sign commits

Check for existing keys:

```
$ gpg --list-secret-keys --keyid-format LONG
sec   rsa4096/<key-id>   <creation-date>  [SC]
      <fingerprint>
uid            [ultimate] <email-address>
ssb    rsa4096/<secret sub-key-id> <creation-date> [SC]
```

Generate new key using Yubikey:

```
gpg --card-edit
gpg/card> admin
gpg/card> generate
```

Export the key to upload to Github:

```
gpg --armor --export <your-key-id>
```

Add the key to gitconfig:

```
echo $'[user]\n	signingKey = <your-key-id>' > ~/.gitconfig.local
```

#### Laptop with _wrong_ keyboard

```
brew cask install karabiner-elements
```

### Acknowledges

Highly inspired by [@mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
