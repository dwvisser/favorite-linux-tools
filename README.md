# My Favorite Linux Tools

Many of these are actually cross-platform. For context, I am currently using
[Linux Mint](https://www.linuxmint.com/) 19.x, based off of
[Ubuntu](https://ubuntu.com) 18.04.

## Terminal-based tools

Name | My Preferred Install Method | Description
---- | --------------------------- | -----------
[autojump](https://github.com/wting/autojump) | `apt intall autojump`, then see man file for launching in your *.bashrc* | Lets me change working directory to recently used directories via quick pattern match.
[bandwhich](https://github.com/imsnif/bandwhich) | Unzip executable from releases tarball to */usr/local/bin* | Very nice presentation of what programs are consuming bandwith on connections to where. Needs `sudo` to run.
[bat](https://github.com/sharkdp/bat) | dpkg (see below) | Think `cat` with paging and syntax highlighting.
[bpytop](https://github.com/aristocratos/bpytop) | `sudo snap install bpytop`, follow instructions at [snapcraft](https://snapcraft.io/bpytop) to give permissions, then otionally make an [alias](.bash_aliases) | Fancy `top` replacement.
[duf](https://github.com/muesli/duf) | dpkg (see below) | Easy-on-the-eyes `du`/`df` replacement.
[hexyl](https://github.com/sharkdp/hexyl/) | dpkg (see below) | Rust-based colorful hexadecimal binary file viewer.
[micro](https://github.com/zyedidia/) | `snap install --classic micro` | Nano replacement with syntax highlighting, implemented in Go.
[nushell](https://github.com/nushell/nushell) | Download tarball release file, extract, and update [alias](.bash_aliases) | Fancy uber-capable shell, implemented in Rust.
[ripgrep](https://github.com/BurntSushi/ripgrep) | `snap install --classic ripgrep` | Fast, developer-friendly grep-like code searcher.
[starship](https://starship.rs/) | Copy Fira Code Nerd Font *\*.ttf* files to *~/.fonts*; Set as font in terminal application; `curl -fsSL https://starship.rs/install.sh | bash`; add `eval "$(starship init bash)"` as last line in *.bashrc* | Rust-based amazing developer-friendly rich shell prompt.
[tig](https://jonas.github.io/tig/) | `apt install tig` | Fancy git browser.
[vim](https://vim8.org/) | `apt install vim` | Like trusty old `vi` but better, includs syntax highlighting.

**dpkg** = Find the appropriate *.deb* release file in the project releases site,
`curl -LO [release-file-url]` for the appropriate .deb release file, then
`sudo dpkg -i [release-file]`

### Candidates

These look promising, but I haven't really tried them yet:

* [nb](https://github.com/xwmx/nb) - CLI-based notebook that utilizes Git and can
  sync your notes using a remote git repository.
