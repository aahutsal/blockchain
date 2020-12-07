FROM gitpod/workspace-full-vnc

<<<<<<< HEAD
RUN apt update
RUN apt install emacs tmate -y
RUN mkdir ~/bin \
    curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein -O ~/bin/lein \
    chmod +x ~/bin/lein
RUN export PATH=~/bin:$PATH
=======
>>>>>>> origin/aahutsal/gitpod-setup
# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
