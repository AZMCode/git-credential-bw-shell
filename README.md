# Git Credential Helper for Bitwarden CLI

This script provides Git with Bitwarden credentials, and caches a session key on disk, revokable at any time running `bw lock`.

It currently only implements the `get` command.

## Dependencies

* [Bitwarden CLI (bw)](https://bitwarden.com/help/article/cli/)

## Installation

Running this command will install the helper in either ~/.local/bin if it exists, otherwise with sudo in /usr/bin.
It will also configure the helper to be used
```
curl -s https://raw.githubusercontent.com/AZMCode/git-credential-bw-shell/master/installer.sh | bash -s
```

### Manual Installation

1. Download the git-credential-bw script somewhere in $PATH or $GIT_EXEC_PATH, and give it execute permissions
2. Run `git config --add credential.helper bw` or `git config --global --add credential.helper bw` depending on whether you want the helper used globally or only in the current repository.

## Configuration

Within the script there are [these variables](https://github.com/AZMCode/git-credential-bw/blob/2ecd64c5d98ba109b087b0a0ac74e086de88ea17/git-credential-bw#L17-L27), which can be used to configure the following things:

* Session Cache Filepath
	* The program caches a session key in a file, this determines the path of it. Points to `/tmp/git-credential-bw.key` by default.
* Item Search String
	* Bitwarden requires a search string to find the item that contains the login credentials for Git. Is `git` by default.
* Maximum Attempts
	*  The program will attempt to get the credentials for a maximum of 3 times by default. This setting can change that. -1 results in the program never ceasing attempts.

## Author and Copyright

```
Adriano Zambrana Marchetti
Licensed under GPLv3. See LICENSE file for more details
```
