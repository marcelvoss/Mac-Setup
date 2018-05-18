#!/bin/sh

# Update Software
sudo softwareupdate -i -a

# Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Go
echo "export GOPATH=$HOME/Go" >> ~/.bash_profile
echo "export GOROOT=/usr/local/opt/go/libexec" >> ~/.bash_profile
echo "export PATH=$PATH:$GOROOT/bin:$GOPATH/bin" >> ~/.bash_profile

# Fastlane
echo "export PATH=$HOME/.fastlane/bin:$PATH" >> ~/.bash_profile

# Brew
brew install go
brew install ruby
brew install python
brew install speedtest-cli
brew install cloc
brew install pwgen
brew install mas
brew install graphviz
brew install chisel

# Cask
brew cask install google-chrome
brew cask install fastlane
brew cask install kaleidoscope
brew cask install visual-studio-code
brew cask install spotify
brew cask install moneymoney
brew cask install jetbrains-toolbox
brew cask install dash
brew cask install coderunner
brew cask install iterm2
brew cask install tower
brew cask install appcleaner
brew cask install cyberduck
brew cask install transmission
brew cask install brisk
brew cask install discord

sudo gem install jekyll
sudo gem install carthage
sudo gem install cocoapods
sudo gem install faker
sudo gem install bundler

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
mas install 441258766 # Magnet
mas install 1147396723 # WhatsApp
mas install 1290932760 # LineX
mas install 924726344 # Deliveries

sudo reboot

