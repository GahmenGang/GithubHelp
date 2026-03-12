
# github fehlermeldung: E: The repository 'https://dl.yarnpkg.com/debian stable InRelease' is not signed.
# N: Updating from such a repository can't be done securely, and is therefore disabled by default.

# 1. GPG‑Key in einen dedizierten Keyring legen:
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg \
  | gpg --dearmor \
  | sudo tee /usr/share/keyrings/yarn-keyring.gpg >/dev/null

# 2 APT‑Source neu anlegen (Beispiel: Debian/Ubuntu „stable“):
echo "deb [signed-by=/usr/share/keyrings/yarn-keyring.gpg] https://dl.yarnpkg.com/debian/ stable main" \
  | sudo tee /etc/apt/sources.list.d/yarn.list

# 3 Update + Upgrade
sudo apt update -y && sudo apt upgrade -y
