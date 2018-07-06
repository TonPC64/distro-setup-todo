# Distro Setup Todo

- [Utilities](#utilities)
- [GO](#go)
- [ZSH setup](#zsh-setup)
- [File .zshrc](#file-zshrc)
- [VS CODE](#vs-code)
- [GIT ALIAS](#git-alias)

## Utilities

```bash
# add repo
#chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

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

# install all
sudo apt-get install -y git python3 python3-pip snapd flatabulous-theme ultra-flat-icons nodejs code plank google-chrome-stable
pip3 install --upgrade pip
sudo pip3 install -U setuptools
pip3 install awscli --upgrade --user
# snap
snap install mailspring
snap install spotify
snap install slack
```

[^ Top](#distro-setup-todo)

---

## GO

```bash
sudo curl -O https://storage.googleapis.com/golang/go1.9.4.linux-amd64.tar.gz
sudo tar -xvf go1.9.4.linux-amd64.tar.gz
sudo mv go /usr/local
rm -rf go go1.9.4.linux-amd64.tar.gz
```

### GO DEV TOOLS

```bash
# like a nodemon
go get github.com/liudng/dogo

# vendor
## dep
curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
## manul
go get github.com/kovetskiy/manul
## glide
curl https://glide.sh/get | sh
```

[^ Top](#distro-setup-todo)

---

## ZSH setup

> run script

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/TonPC64/distro-setup-todo/master/zshinstaller.sh)";
```

> or manual

```bash
# install zsh & oh-my-zsh
sudo apt-get install zsh;
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";

# install powerline fonts
git clone https://github.com/powerline/fonts;
./fonts/install.sh;
rm -rf fonts;

# install cobalt2 theme
git clone https://github.com/wesbos/Cobalt2-iterm.git;
cp Cobalt2-iterm/cobalt2.zsh-theme ~/.oh-my-zsh/themes;
rm -rf Cobalt2-iterm;
# Open up your ZSH preferences at ~/.zshrc and change the theme variable to ZSH_THEME="cobalt2"

# install pluing zsh
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions;
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting;
# update  at ~/.zshrc "plugins=(zsh-autosuggestions zsh-syntax-highlighting)"
```

### File .zshrc

```bash
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias sourcezsh="source ~/.zshrc"
alias open="xdg-open"
alias cls="clear"
alias allupdate="sudo apt update; sudo apt upgrade -y; sudo apt autoremove -y;"

export GOROOT=$HOME/bin/go1.10
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/go
export LGOBIN=$GOPATH/bin

export PATH=$PATH:$LGOBIN:$GOPATH:$GOROOT/bin
```

[^ Top](#distro-setup-todo)

---

## VS CODE

### Setting

> > view **vscode-setting.json** file in repo

### Extension

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/TonPC64/distro-setup-todo/master/vscode-extension.sh)";
```

## GIT ALIAS

```sh
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
```

[^ Top](#distro-setup-todo)

for linux user like me.
