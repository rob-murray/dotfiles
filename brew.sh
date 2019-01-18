#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install aircrack-ng
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install netpbm
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install zopfli

# my custom things
brew install gnupg
brew install ruby-build
brew install go
brew install mpfr
brew install screen
brew install autoconf
brew install grep
brew install mysql
brew install automake
brew install heroku
brew install shiboken
brew install httpie
brew install nginx
brew install hub
brew install node
brew install sqlite
brew install    icu4c
brew install openssh
brew install ssdeep
brew install imagemagick
brew install openssl
brew install ctags
brew install isl
brew install curl
brew install isl014
brew install parity
brew install jasper
brew install pcre
brew install php56
brew install the_silver_searcher
brew install jpeg
brew install tmux
brew install dnsmasq
brew install pkg-config
brew install elasticsearch
brew install libdnet
brew install ucspi-tcp
brew install libevent
# brew install postgresql
brew install unixodbc
brew install gpg2
brew install libgpg-error
brew install libidn
brew install pyside
brew install vim
brew install freetype
brew install libksba
brew install qt
brew install gcc
brew install libmpc
brew install rbenv
brew install webp
brew install gcc5
brew install libpng
brew install rcm
brew install wget
brew install gettext
brew install libtiff
brew install readline
brew install libtool
brew install reattach-to-user-namespace
brew install libxml2
# brew install redis
brew install gmp
brew install libyaml
brew install gnu-sed
brew install gnu-tar

brew install Caskroom/cask/pgadmin3
brew install Caskroom/cask/sourcetree
brew install Caskroom/cask/java
brew install Caskroom/cask/firefox
brew install Caskroom/cask/postman

# Remove outdated versions from the cellar.
brew cleanup
