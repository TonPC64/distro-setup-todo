# Distro Setup Todo

## Utilities

```bash

# add repo
## themes & icons
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:noobslab/icons

## nodejs
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
## vscode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# update
sudo apt-get update

#install all
sudo apt-get install -y git flatabulous-theme ultra-flat-icons nodejs code
```

---

## GO

```bash
sudo curl -O https://storage.googleapis.com/golang/go1.9.4.linux-amd64.tar.gz
sudo tar -xvf go1.9.4.linux-amd64.tar.gz
sudo mv go /usr/local
rm -rf go go1.9.4.linux-amd64.tar.gz
```

---

## ZSH setup

```bash
# install zsh & oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install powerline fonts
git clone https://github.com/powerline/fonts
./fonts/install.sh
rm -rf fonts

# install cobalt2 theme
git clone https://github.com/wesbos/Cobalt2-iterm.git
cp Cobalt2-iterm/cobalt2.zsh-theme ~/.oh-my-zsh/themes
rm -rf Cobalt2-iterm
# Open up your ZSH preferences at ~/.zshrc and change the theme variable to ZSH_THEME="cobalt2"

# install pluing zsh
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
# update  at ~/.zshrc "plugins=(zsh-autosuggestions)"
```

### File .zshrc

```bash
alias zshconfig="code ~/.zshrc"
alias sourcezsh="source ~/.zshrc"
alias open="xdg-open"

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export LGOBIN=$GOPATH/bin
export GOWORK=$GOPATH/src
export PATH=$PATH:$LGOBIN:$GOPATH:$GOROOT/bin
export GO15VENDOREXPERIMENT=1
```

---

## VS CODE

### setting

```json
{
    "terminal.integrated.fontSize": 14,
    "terminal.integrated.fontFamily": "Roboto Mono Light for Powerline",
    "eslint.validate": [
        "javascript",
        "javascriptreact",
        "vue"
    ],
    "emmet.includeLanguages": {
        "vue-html":"html",
        "vue":"html"
    },
    "git.autofetch": true,
    "git.enableSmartCommit": true,
    "workbench.iconTheme": "material-icon-theme",
    "git.confirmSync": false,
    "workbench.startupEditor": "newUntitledFile",
    "workbench.colorTheme": "JetJet-Alternate-Gray"
}
```

### VS CODE EXTENTIONS

* Bracket Pair Colorizer
* ESLint
* JetJet-theme
* Vetur
* Vue peek
* Path Intellisense
* Npm Intellisense
* Material Icon Theme
* Go
* Copy Relative Path
