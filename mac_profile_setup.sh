# Give execute permission and run as sudo


# Install item : https://iterm2.com/downloads.html

# Install ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install auto suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#add plugin to ~/.zshrc in plugins=()> zsh-autosuggestions


# Install syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
#add plugin to ~/.zshrc in plugins=()> zsh-syntax-highlighting

#Install powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Set theme  ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc


echo "# ######### Adding custom settings #############"

#adding plugins
echo "plugins=(

git

zsh-autosuggestions

zsh-syntax-highlighting

)" >> ~/.zshrc

# if not working comment the previous theme selection line in zshrc
echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc

# Configure pk10 : will give you prompt
p10k configure

# Load the zshrc profile
source ~/.zshrc