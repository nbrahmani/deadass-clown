# Creates keyboard shortcut to get git credentials on clipboard
# Workaround to storing PAT in Credential Cache: git config --global credential.helper store

* Go to Settings > Keyboard > Custom Shortcuts
* Add command: sh -c "cat file_storing_git_creds | xclip -sel clip"
* Sample Key: Crtl + Shift + G
