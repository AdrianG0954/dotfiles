# Dotfiles

**FYI: As my developer workflow is bound to change, so is this repo :)** 

## Prerequisites

First, lets get the basics out the way:

**NOTE:** Right now, I just prefer Ghostty as my terminal emulator. 
To install Ghostty, visit: https://ghostty.org/download

```
# Upgrade macOS to latest everything
softwareupdate --all --install --force

# Install developer tools
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
Also make sure to install all packages specified in the `Brewfile`. Some should be skipped if this is for a professional environment. Review the `BrewFile` to determine what should be kept.

```
brew bundle --file=Brewfile
```
Once done, we can proceed.

## Useful Apps
```
brew install --cask \
discord \
zen \
warp \
raycast \
```
Once thats all done :p, we can actually start setting up the dotfiles.

Setting up should be as easy as cloning the repo, setting up the smylinks, and boom!

**Important Note:** in order to properly link, stow expects your files to have the same structure as those in the `HOME` folder would. What that means is if your `.zshrc` is stuctured as `~/.zshrc`, then yours will have to be `dotfiles/.zshrc`. For a more detailed explanation see [here](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html).

## Symlinking
I use **GNU Stow** to manage my sym linking. For more information, visit the [GNU Stow website](https://www.gnu.org/software/stow/).

To sym link, clone this repo into your root directory and cd into it. Once there, run the below within the `dotfiles` directory:

```bash
stow Ghostty # to create a symlink for the config

stow .zshrc # to create a symlink for the zsh prompt

stow Brewfile # to connect the brewfiles

stow git # to connect the git
stow gitconfig # connects gitconfig

stow tmux # connects tmux config
```
