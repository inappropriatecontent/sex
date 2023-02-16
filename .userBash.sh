sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install build-essential -y
sudo apt-get update -y
sudo apt-get install -y wget tar vim less micro
wget https://github.com/sayanarijit/xplr/releases/latest/download/xplr-linux.tar.gz
tar -xzvf xplr-linux.tar.gz
sudo mv xplr /usr/local/bin/
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash -
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 18 --latest-npm
npm i -g http-server
npm up -g
sudo apt update
sudo apt-get upgrade -y
sudo apt-get install -y jq fzf
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
sudo apt update
sudo apt-get upgrade -y
sudo apt install gh -y
alias xcd='cd "$(xplr --print-pwd-as-result)"'
gh auth login -s delete_repo

gh extension install yusukebe/gh-markdown-preview
gh extension install sayanarijit/gh-xplr
gh extension install korosuke613/gh-user-stars
gh repo clone web
gh repo clone sex
# 127.0.0.1
# openssl req -newkey rsa:2048 -new -nodes -x509 -days 2030 -keyout key.pem -out cert.pem && http-server -S -c -k --cors --no-dotfiles -o
