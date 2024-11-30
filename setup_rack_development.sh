mkdir rack
cd rack

# setup homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install development tools
brew install git wget cmake autoconf automake libtool jq python zstd pkg-config

# download rack source
git clone https://github.com/VCVRack/Rack.git
cd Rack
git submodule update --init --recursive
make dep
make -j12
cd ..


# download Rack-SDK for Mac
wget https://vcvrack.com/downloads/Rack-SDK-latest-mac-x64+arm64.zip
unzip Rack-SDK-latest-mac-x64+arm64.zip
cd Rack-SDK
export RACK_DIR=`pwd`
cd ..

# download the Fundamental plugins
git clone https://github.com/VCVRack/Fundamental.git
cd Fundamental
git submodule update --init --recursive
make dep
make -j12
