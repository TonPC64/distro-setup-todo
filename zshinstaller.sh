# install zsh & oh-my-zsh
sudo apt-get install -y zsh;
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