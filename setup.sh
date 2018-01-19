#!/bin/sh

# Update Software
sudo softwareupdate -i -a

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Brew
brew install ruby
brew install python
brew install speedtest-cli
brew install cloc
brew install pwgen
brew install mas
brew install graphviz

# Cask
brew cask install google-chrome
brew cask install fastlane
brew cask install visual-studio-code
brew cask install spotify
brew cask install whatsapp
brew cask install moneymoney
brew cask install jetbrains-toolbox
brew cask install dash
brew cask install coderunner
brew cask install iterm2
brew cask install tower
brew cask install appcleaner
brew cask install cyberduck
brew cask install transmission

sudo gem install jekyll
sudo gem install carthage
sudo gem install cocoapods

# Mac App Store
mas signin $1
mas install 497799835 # Xcode
mas install 443987910 # 1Password
mas install 557168941 # Tweetbot
mas install 409201541 # Pages
mas install 409203825 # Numbers
mas install 409183694 # Keynote
mas install 803453959 # Slack
mas install 425424353 # The Unarchiver
mas install 408981434 # iMovie
mas install 421879749 # Rested
mas install 775737590 # iA Writer
mas install 1107421413 # 1Blocker
mas install 410628904 # Wunderlist

sudo reboot

