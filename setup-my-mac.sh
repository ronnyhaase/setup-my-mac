#!/usr/bin/env bash
echo Setting up your Mac!
echo Please make sure it does not go into sleep mode!

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
brew tap caskroom/cask
brew tap homebrew/cask-fonts
brew tap mongodb/brew

brew install git
brew install gh
brew install httpie
brew install mongodb-community-shell
brew install node
brew install python
brew install r
brew install watchman
brew install wget
brew install yarn

brew cask install 1password
brew cask install ableton-live-intro
brew cask install firefox
brew cask install cyberduck
brew cask install docker
brew install docker-machine
brew cask install dropbox
brew cask install google-chrome
brew cask isntall jami
brew cask install java
brew cask install iterm2
brew cask install libreoffice
brew cask install microsoft-edge
brew cask install mongodb-compass-community
brew cask install protonvpn
brew cask install sourcetree
brew cask install spectacle
brew cask install spotify
brew cask install tableplus
brew cask install virtualbox
brew cask install visual-studio-code

brew cask install font-jetbrains-mono
brew cask install font-lato
brew cask install font-merriweather
brew cask install font-open-sans
brew cask install font-ostrich-sans
brew cask install font-source-code-pro

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# NPM
npm i -g fx
npm i -g serve
npm i -g trash-cli
npm i -g netlify-cli

# vim
mkdir -p ~/.vim/colors
rm ~/.vimrc
wget -O ~/.vimrc https://raw.githubusercontent.com/ronnyhaase/vimrc/master/.vimrc
wget -O ~/.vim/colors/molokai.vim https://raw.githubusercontent.com/ronnyhaase/vimrc/master/.vim/colors/molokai.vim
wget -O ~/.vim/colors/solarized.vim https://raw.githubusercontent.com/ronnyhaase/vimrc/master/.vim/colors/solarized.vim

# VSCode
rm ~/Library/Application\ Support/Code/User/settings.json
rm ~/Library/Application\ Support/Code/User/keybindings.json
wget -O ~/Library/Application\ Support/Code/User/settings.json https://raw.githubusercontent.com/ronnyhaase/vscode-config/master/settings.json
wget -O ~/Library/Application\ Support/Code/User/keybindings.json https://raw.githubusercontent.com/ronnyhaase/vscode-config/master/keybindings.json
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.auto-rename-tag
code --install-extension EditorConfig.editorconfig
code --install-extension wix.vscode-import-cost
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension PeterJausovec.vscode-docker
code --install-extension mikestead.dotenv
code --install-extension dbaeumer.vscode-eslint
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension hbenl.vscode-firefox-debug
code --install-extension pflannery.vscode-versionlens

# Mac settings, see https://github.com/kevinSuttle/macOS-Defaults
# Show file extensions, and hiddenfiles in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
# No natural scolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -int 0
# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top left screen corner → Launchpad
defaults write com.apple.dock wvous-tl-corner -int 11
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → Show application windows
defaults write com.apple.dock wvous-tr-corner -int 3
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → Desktop
defaults write com.apple.dock wvous-bl-corner -int 4
defaults write com.apple.dock wvous-bl-modifier -int 0
# Bottom right screen corner → Put display to slepp
defaults write com.apple.dock wvous-br-corner -int 10
defaults write com.apple.dock wvous-br-modifier -int 0
# Kill affected applications
for app in "cfprefsd" \
  "Dock" \
  "Finder" \
  "SystemUIServer"; do
  killall "${app}" &> /dev/null
done

# Manually:
#   XCode
# Github:
#   Generate and add SSH keys, consider to delete old
#
# System preferences (some can be scripted in future as well)
#   Enable firewall
#   Disable auto-brightness for keyboard and screen
#   Enable 3 finger dragging in A11Y
#   Trackpad
#   Active corners (Desktop & Screen Saver > Screen Saver)
#   Dock settings & cleanup
#
