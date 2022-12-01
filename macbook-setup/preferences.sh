#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# Set computer name (as done via System Preferences → Sharing)
sudo scutil --set ComputerName "rattlesnake"
sudo scutil --set HostName "rattlesnake"
sudo scutil --set LocalHostName "rattlesnake"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "rattlesnake"

### System

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Set standby delay (in ms) to 2 hours
sudo pmset -a standbydelay 7200

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable the crash reporter
defaults write com.apple.CrashReporter DialogType -string "none"

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable Resume system-wide
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false

# Disable Notification Center and remove the menu bar icon
launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist 2>/dev/null

# Disable automatic capitalization as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable automatic period substitution as it’s annoying when typing code
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Australia/Sydney" >/dev/null

### Menubar

# change the date time display
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""

# hide the the following icons
# show the following icons

### Dock

# Change icon size to 24 px
defaults write com.apple.dock "tilesize" -int "48"
# Turn off auto-hide
defaults write com.apple.dock "autohide" -bool "false"
# Do not show recent items
defaults write com.apple.dock "show-recents" -bool "false"
# Restart the dock for changes to take effect
killall Dock

### Screenshots

# remove drop shadow
defaults write com.apple.screencapture "disable-shadow" -bool "true"
# include date-time in screenshot
defaults write com.apple.screencapture "include-date" -bool "true"
# set screenshot location
defaults write com.apple.screencapture "location" -string "~/Desktop"
# save as png
defaults write com.apple.screencapture "type" -string "png"
# restart UI to take effect
killall SystemUIServer

### Finder

# turn on quit button
defaults write com.apple.finder "QuitMenuItem" -bool "true"
# show file extensions
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
# do not display warning when changing file extension
defaults write com.apple.finder "FXEnableExtensionChangeWarning" -bool "false"
# show hidden files
defaults write com.apple.Finder "AppleShowAllFiles" -bool "true"
# do not save to icloud by default (when saving a new document)
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
# expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
# turn off recent places
defaults write -g NSNavRecentPlacesLimit -int 0
# disable window animations and Get Info animations
defaults write com.apple.finder DisableAllAnimations -bool true
# Set the user directory as the default location for new Finder windows
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/"
# Hide icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false
# show path bar
defaults write com.apple.finder ShowPathbar -bool true
# show status bar
defaults write com.apple.finder ShowStatusBar -bool true
# show full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# when performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# avoid creating .DS_Store files for the current user from now on
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
# disable disk image verification
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
# automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
# empty Trash securely by default
defaults write com.apple.finder EmptyTrashSecurely -bool true
# use column view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"
# show the ~/Library folder
chflags nohidden ~/Library
# Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
  General -bool true \
  OpenWith -bool true \
  Privileges -bool true
# Restart finder
killall Finder

### Spotlight

# do not write to usb stores (metadata files)
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

### TextEdit

# disable richtext save by default
defaults write com.apple.TextEdit "RichText" -bool "false"

# restart TextEdit
killall TextEdit

### Timemachine
# do not prompt for backup on new disk
defaults write com.apple.TimeMachine "DoNotOfferNewDisksForBackup" -bool "true"
