# GithubHelp
Helps with (GitHub) issues

# 

# GitHub-Python-Fix.sh

# github error: E: The repository 'https://dl.yarnpkg.com/debian stable InRelease' is not signed.
1. GPG‑Key in einen dedizierten Keyring legen:
   
bash
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg \
  | gpg --dearmor \
  | sudo tee /usr/share/keyrings/yarn-keyring.gpg >/dev/null

3. APT‑Source neu anlegen (Beispiel: Debian/Ubuntu „stable“):
   
bash
echo "deb [signed-by=/usr/share/keyrings/yarn-keyring.gpg] https://dl.yarnpkg.com/debian/ stable main" \
  | sudo tee /etc/apt/sources.list.d/yarn.list

5. Update:
   
bash
sudo apt update 

# ------------------------------------------------------

# install-bash-4-python-debian-vps.sh

insteat of installing "# opencv, numpy + mutagen" with pip from requierements.txt use the script
