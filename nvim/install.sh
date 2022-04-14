# Install dependencies
if ! command -v python3 &> /dev/null
then
	sudo apt-get install -y python3
fi

if ! command -v pip3 &> /dev/null
then
	sudo apt-get install -y python3-pip
fi

if ! command -v npm &> /dev/null
then
	curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
	sudo apt-get install -y nodejs
fi

if ! command -v rg &> /dev/null
then
	sudo apt-get install -y ripgrep
fi

# Install Neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version
mv squashfs-root / && ln -s /squashfs-root/AppRun /usr/bin/nvim

# Install PHP Language Server Protocol
npm i -g intelephense
