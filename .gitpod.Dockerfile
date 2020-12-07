FROM gitpod/workspace-full-vnc

RUN git clone -f https://github.com/aahutsal/dotfiles.git .

RUN sudo apt update \
  && sudo apt upgrade -y \
  && sudo apt install emacs tmate zsh htop -y

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

RUN mkdir ~/bin \
  && curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > ~/bin/lein \
  && chmod +x ~/bin/lein

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

RUN export PATH=~/bin:$PATH

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
