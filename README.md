# My Favorite Linux Tools

Many of these are actually cross-platform. For context, I am currently using
[Linux Mint](https://www.linuxmint.com/) 19.x, based off of
[Ubuntu](https://ubuntu.com) 18.04.

## Terminal-based tools

Name | My Preferred Install Method | Description
---- | --------------------------- | -----------
[autojump](https://github.com/wting/autojump) | `apt intall autojump`, then see man file for launching in your *.bashrc* | Lets me change working directory to recently used directories via quick pattern match.
[bash-git-prompt](https://github.com/magicmonty/bash-git-prompt) | see *Git clone* method at site | Fancy bash prompt whenever you are in a Git workspace folder. Shows branch and status with respect to remote, as well as indication of exit code of most recently executed command.
[bat](https://github.com/sharkdp/bat) | dpkg (see below) | Think `cat` with paging and syntax highlighting.
[bpytop](https://github.com/aristocratos/bpytop) | `python3 -m pip install --user bpytop`, then make [alias](.bash_aliases) to `python3 -m bpytop`| Fancy `top` replacement.
[duf](https://github.com/muesli/duf) | dpkg (see below) | Easy-on-the-eyes `du`/`df` replacement.
[micro](https://github.com/zyedidia/) | `snap install --classic micro` | Nano replacement with syntax highlighting, implemented in Go.
[nushell](https://github.com/nushell/nushell) | Download tarball release file, extract, and update [alias](.bash_aliases) | Fancy uber-capable shell, implemented in Rust.
[ripgrep](https://github.com/BurntSushi/ripgrep) | `snap install --classic ripgrep` | Fast, developer-friendly grep-like code searcher.
[tig](https://jonas.github.io/tig/) | `apt install tig` | Fancy git browser.
[vim](https://vim8.org/) | `apt install vim` | Like trusty old `vi` but better, includs syntax highlighting.

**dpkg** = `curl -LO [release-file]` the appropriate .deb release file from the project release
files, then `dpkg -i [release-file]`

### Candidates

These look promising, but I haven't really tried them yet:

* [nb](https://github.com/xwmx/nb) - CLI-based notebook that utilizes Git and can
  sync your notes using a remote git repository.
