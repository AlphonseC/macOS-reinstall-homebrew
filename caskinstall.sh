#不要使用sudo執行(Don't use sudo)
#調整執行權限 chmod a+x CasksInstall.sh
#!/bin/bash

#更改截圖為JPG與路徑
defaults write com.apple.screencapture type jpg

#重啟基礎設定
sudo spctl --master-disable
defaults write com.apple.frameworks.diskimages skip-verify YES
# qlmanage -r
killall SystemUIServer

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# check brew
brew update
brew upgrade
# brew app install
brew tap "buo/cask-upgrade"
brew tap "homebrew/bundle"
brew tap "homebrew/cask"
brew tap "homebrew/core"
brew tap "homebrew/cask-versions"
# brew install "python@3.9"
brew install "curl"
brew install "ffmpeg"
brew install "git"
brew install "jq"
brew install "make"
brew install "mas"
brew install "pup"
brew install "recode"
brew install "wget"
brew install "youtube-dl"
## Browsers
brew install --cask firefox
# brew install --cask google-chrome
brew install --cask microsoft-edge
#brew install --cask tor-browser
## Life
brew install --cask welly
mas install 865500966 #"feedly"
brew install --cask neteasemusic
brew install --cask spotify
brew install --cask clicker-for-netflix
brew install --cask evernote
## IMs
mas install 539883307 #"LINE"
mas install 836500024 #"WeChat"
mas install 1147396723 #"WhatsApp"
brew install --cask telegram
# brew install --cask signal
## Works
mas install 1176895641 #"Spark"
brew install --cask microsoft-word
brew install --cask microsoft-excel
brew install --cask microsoft-powerpoint
#brew uninstall --cask microsoft-auto-update
mas install 1091189122 #"熊掌記"
brew install --cask typora
mas install 1142151959 #"Just Focus"
# mas install 568494494 #"Pocket"
mas install 425955336 #"Skitch"
## VPN
brew install --cask surfshark
## player
brew install --cask iina
brew install --cask vlc
brew install --cask movist-pro
## Tools
mas install 1254743014 #"LyricsX" 
# brew install --cask aldente
# brew install --cask upic
brew install --cask downie
brew install --cask permute
brew install --cask free-download-manager
brew install --cask jdownloader
brew install --cask launchcontrol
brew install --cask appcleaner
brew install --cask keka
brew install --cask kekaexternalhelper
brew install --cask transmission
brew install --cask handbrake
brew install --cask find-any-file
brew install --cask netdownloadhelpercoapp
mas install 1453831247 #"ATMOS MissionOne Tool"
mas install 1481669779 #"Evernote Web Clipper"
mas install 1396383432 #"EverTool"
#mas install 1524426148 #"One Click Translate for Safari"
mas install 1552536109 #"PasteNow (1.3.1)"
mas install 1160374471 #"PiPifier"
#mas install 1477385213 #"Save to Pocket"
mas install 1482490089 #"Tampermonkey"
# mas install 457622435 #"Yoink"
mas install 1493106434 #"化簡為繁"
mas install 1540160809 #"OneTab"
## safe
brew install --cask adguard
# brew install --cask lulu
# Other
# mas install 497799835 #"Xcode"
# mas install 1496833156 #"Playgrounds"
# mas install 34350458 #"歐路詞典"

#Homebrew殘留檔整理
brew uninstall --force brew-cask; brew update; brew upgrade; brew cu -a -y; mas upgrade; brew cleanup; rm -rf ~/Library/Caches/Homebrew/
