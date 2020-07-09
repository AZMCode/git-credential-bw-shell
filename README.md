# Git Credential Helper for Bitwarden CLI

## Dependencies

* [Bitwarden CLI (bw)](https://bitwarden.com/help/article/cli/)

## Installation

Running this command will install the helper in either ~/.local/bin if it exists, otherwise with sudo in /usr/bin.
It will also configure the helper to be used
```
curl -s https://raw.githubusercontent.com/AZMCode/git-credential-bw/master/installer.sh | bash -s
```

### Manual Installation

1. Download the git-credential-bw script somewhere in $PATH or $GIT_EXEC_PATH, and give it execute permissions
2. Run `git config --add credential.helper bw` or `git config --global --add credential.helper bw` depending on whether you want the helper used globally or only in the current repository.

## Author and Copyright

```
Adriano Zambrana Marchetti
Licensed under GPLv3. See LICENSE file for more details
```
