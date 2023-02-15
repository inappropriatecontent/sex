sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install build-essential -y
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash -

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install 18 --latest-npm
sudo apt-get install build-essential -y
 # /bin/bash
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg &&
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list &&
sudo apt update && sudo apt install codium -y &&
codium --install-extension ankitpati.vscodium-amoled
codium --install-extension armandphilippot.coldark
codium --install-extension ginfuru.ginfuru-better-solarized-dark-theme
codium --install-extension GulajavaMinistudio.mayukaithemevsc
codium --install-extension HookyQR.beautify
codium --install-extension tomWritesCode.raspberrycandy
exit 1

 # /bin/bash
mkdir sex && nvm install 18 && corepack prepare yarn@2.4.3 --activate
echo $'{ "name": "sex", "private": "true", "description": "sexMedia", "dependencies": { "browser-fs-access": "/mnt/chromeos/removable/nonsex/ModuleArchive.New/GoogleChromeLabs-browser-fs-access.master.tar.gz", "media-comp": "/mnt/chromeos/removable/nonsex/ModuleArchive.New/muxinc-media-chrome.master.tar.gz", "notyf": "^3.10.0" }, "scripts": {}, "author": "A. Perv", "devDependencies": { "Unibeautify": "/mnt/chromeos/removable/nonsex/ModuleArchive.New/Unibeautify-unibeautify.master.tar.gz", "parcel": "/mnt/chromeos/removable/nonsex/ModuleArchive.New/parcel-bundler-parcel.master.tar.gz" } }' >> sex/package.json
cd sex && corepack enable && yarn install
exit 1