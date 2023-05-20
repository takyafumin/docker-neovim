FROM ubuntu:jammy-20230425

RUN apt-get update -y \
 && apt-get install -y --no-install-recommends \
 curl=7.81.0-1ubuntu1.10 \
 git=1:2.34.1-1ubuntu1.9 \
 build-essential=12.9ubuntu3 \
 nodejs=12.22.9~dfsg-1ubuntu3 \
 npm=8.5.1~ds-1 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# install homebrew
RUN /bin/bash -c "echo y | $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
RUN eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
ENV PATH=$PATH:/home/linuxbrew/.linuxbrew/bin


# install neovim, deno
RUN brew install neovim deno \
 && brew cleanup


# setup neovim
RUN mkdir /work \
 && mkdir -p /root/.config/nvim \
 && git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# init neovim
COPY .config/nvim /root/.config/nvim
RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' \
 && nvim --headless \
 -c 'TSUpdate' \
 -c 'MasonInstall intelephense' \
 -c 'MasonInstall bash-language-server' \
 -c 'MasonInstall vim-language-server' \
 -c 'qall'


WORKDIR /work
CMD ["nvim"]

