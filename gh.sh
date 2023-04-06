#!/usr/bin/env bash
export GHP=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
type -p curl >/dev/null || (sudo apt update && sudo apt install curl -y)
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y \
&& gh auth login --with-token < $GHP
# && gh extension install yusukebe/gh-markdown-preview \
# && gh extension install korosuke613/gh-user-stars \
# && gh extension install gennaro-tedesco/gh-s \
# && gh alias set stars gh-user-stars \
# && gh alias set p markdown-preview