# dotfiles-nix

## Installation
Install it as follows on a fresh nixos installation.
```
nix-shell -p git
git clone --bare https://github.com/dominikrosser/dotfilesgit.git $HOME/.dotfiles.git
echo "alias dotfilesgit='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'" >> $HOME/.bashrc
source $HOME/.bashrc
dotfilesgit checkout
cd $HOME/.dotfiles-nix && sudo-nixos-rebuild switch --flake .
cd $HOME/.dotfiles-nix && home-manager switch --flake .
```
TODO: If one of the SHA256 keys for the programs downloaded from github does not match here, change it temporarily. I don't know why this happens.
TODO: Instructions to replicate or copy SSH keys and secret stuff.
