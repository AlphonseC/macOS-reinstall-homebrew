#不要使用sudo執行(Don't use sudo)
#調整執行權限 chmod a+x CasksInstall.sh
brew uninstall --force brew-cask; brew update; brew upgrade; brew cu -a -y; mas upgrade; brew cleanup; rm -rf ~/Library/Caches/Homebrew/