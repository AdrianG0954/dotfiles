# Dotfiles

## Prerequisites
As my developer workflow is bound to change, so is this repo :)

First, lets get the basics out the way:
```
# Upgrade macOS to latest everything
softwareupdate --all --install --force

# Install developer tools
xcode-select --install

#Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


If not already done, make sure to install all packages specified in the `Brewfile`.
```
brew bundle --file=Brewfile
```
Once done we can proceed.


## Apps 
```
brew install --cask \
discord \
zen \
warp \
raycast \

```

Once thats all done :p, we can actually start setting up the dotfiles.

Setting up should be as easy as cloning the repo, setting up the smylinks, and boom!

**Important Note:** in order to properly link, stow expects your files to have the same structure as those in the `HOME` folder would. What that means is if your `.zshrc` is stuctured as `~/.zshrc`, then yours will have to be `dotfiles_example/.zshrc`. For a more detailed explanation see [here]([url](https://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html)).

## Symbiotic Linking
I use **GNU Stow** to manage my sym linking. For more information, visit the [GNU Stow website](https://www.gnu.org/software/stow/).

After linking your dotfiles with Stow, you should see the changes take effect immediately.

