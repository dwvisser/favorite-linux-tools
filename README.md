<!-- markdownlint-disable html -->
# My Favorite Linux Tools

Many of these are actually cross-platform. For context, I currently use:

1. At home: Fedora Workstation 41 & Ubuntu 24.04
3. At work: Ubuntu 22.04.

 I am also a heavy user of the default [bash](https://www.gnu.org/software/bash/) shell.

## Excellent External Resources

* [dbohdan/structured-text-tools](https://github.com/dbohdan/structured-text-tools) - Much of my day job is concerned with understanding log files we 
  produce. This page gives an invaluable overview of standard tools available for slicing, dicing and comprehending large structured text outputs.
* The excellent list at [ibraheemdev/modern-unix](https://github.com/ibraheemdev/modern-unix) contains more tools I may try in the future.
* A [blog post](https://jvns.ca/blog/2022/04/12/a-list-of-new-ish--command-line-tools/) by Julia Evans has some cool stuff to look at too.

## Terminal-based tools

 I've marked all tools with icons indicating the primary implmentation language, e.g., Rust
<a href=https://commons.wikimedia.org/wiki/File:Rustacean-orig-noshadow.svg><img src=images/rustacean.svg height=18/></a>,
Go (<a href=https://github.com/golang-samples/gopher-vector><img src=images/gopher.svg height=18/></a>), Python
(<a href=https://commons.wikimedia.org/wiki/File:Python-logo-notext.svg><img src=images/python.svg height=18/></a>) and Ruby <img src=images/ruby.svg height=18>.

### Filesystem

Name | Ubuntu | Fedora | Description / Config
---- |------- | ------ | --------------------
<img src=images/python.svg height=18/> [autojump](https://github.com/wting/autojump) | `apt intall autojump`, then see man file for launching in your *.bashrc* | | Lets me change working directory to recently used directories via quick pattern match. A tool I'm watching to replace this whenever I can rely on fzf 0.33 or later packages (Ubuntu 24.04+/Fedora 40+) is [zoxide](https://github.com/ajeetdsouza/zoxide).
<img src=images/rustacean.svg height=18/> [diskonaut](https://github.com/imsnif/diskonaut/) | `cargo install diskonaut` | same | Interactive treemap visualization of disk space usage, right in the console
<img src=images/gopher.svg height=18/> [duf](https://github.com/muesli/duf) | `apt intall duf` | `dnf install duf` | Easy-on-the-eyes `du`/`df` replacement.
<img src=images/rustacean.svg height=18> [eza](https://github.com/eza-community/eza) | [PPA instructions](https://eza.rocks/#debian-and-ubuntu) | `dnf install eza` | `ls` replacement with colorful, columnar output. See useful `ezag` alias in [.bash_aliases](.bash_aliases)
<img src=images/rustacean.svg height=18/> [fd](https://github.com/sharkdp/fd) | `apt install fd-find` | `dnf install fd-find` | Colorful, fast *find* replacement with sensible, opinionated defaults. `fdfind` is the command on Ubuntu.
<img src=images/rustacean.svg height=18> [lla](https://crates.io/crates/lla) | `cargo install lla` | same | A different take on what *eza* does. I particularly like using the `-G` option to peruse a local Git repository.

### Et al

Name | Ubuntu | Fedora | Description / Config
---- |------- | ------ | --------------------
<img src=images/rustacean.svg height=18/> [bandwhich](https://github.com/imsnif/bandwhich) | Unzip executable from releases tarball to */usr/local/bin* | | Very nice presentation of what programs are consuming bandwith on connections to where. Needs `sudo` to run.
<img src=images/rustacean.svg height=18/> [bat](https://github.com/sharkdp/bat) | `apt install bat` (tool is invoked with `batcat` in this case). | `dnf install bat` | Colorful `cat` with line numbers, paging, and syntax highlighting.
<img src=images/rustacean.svg height=18/> [csvlens](https://github.com/YS-L/csvlens/) | `cargo install csvlens` | `cargo install csvlens` | Amazing command-line interactive CSV file viewer. (H or ? shows help)
<img src=images/gopher.svg height=18/> [doggo](https://github.com/mr-karan/doggo) | Unzip executable from releases tarball to */usr/local/bin* |  | Pretty [dig](https://www.isc.org/bind/) replacement, for querying DNS from the command-line.
<img src=images/gopher.svg height=18/> [fx](https://github.com/antonmedv/fx) | `snap install fx` | same or `go install github.com/antonmedv/fx@latest` | JSON Viewer that helps with figuring out [jq](https://github.com/jqlang/jq) query syntax. | 
<img src=images/gopher.svg height=18> [fzf](https://github.com/junegunn/fzf) | `apt install fzf`, then look at `apt show fzf` to find instructions on enabling keybindings and autocompletions. | `dnf install fzf`, then look in */usr/share/doc/fzf* for how to enable keybindings. | Powerful "command-line fuzzy finder" that is hard to describe adequately. Its *Alt-C* function has allowed me to augment *autojump* when jumping *into* the current tree. Just watch [this YouTube video](https://youtu.be/qgG5Jhi_Els), or read [this blog post](https://andrew-quinn.me/fzf/).
<img src=images/gopher.svg height=18/> [glow](https://github.com/charmbracelet/glow) | `snap install glow` | See page for DNF install method. | Render markdown nicely right in the terminal. Use `-p` for paged output.
<img src=images/rustacean.svg height=18/> [gitui](https://github.com/extrawurst/gitui/) | Download binary. Place in *~/.local/bin* | same | same | Intuitive terminal-based UI to your Git repository. Lacks *tig*'s multi-branch tree view, so both tools are nice to have.
<img src=images/rustacean.svg height=18/> [hexyl](https://github.com/sharkdp/hexyl/) | dpkg (see below) | | Colorful hexadecimal binary file viewer.
<img src=images/rustacean.svg height=18/> [jnv](https://github.com/ynqa/jnv) | `cargo install jnv` | same | Pure Rust interactive json filtering for subset of [jq filters](https://jqlang.github.io/jq/manual/#basic-filters).
<img src=images/python.svg height=18/> [litecli](https://github.com/dbcli/litecli) | `pip install litecli` | same | Colorful autocomplete-savvy SQLite CLI client
<img src=images/gopher.svg height=18/> [micro](https://github.com/zyedidia/micro) | `apt install micro` | `dnf install micro` | Nano replacement with syntax highlighting.
<img src=images/rustacean.svg height=18/> [nushell](https://github.com/nushell/nushell) | Download tarball release file, extract under *~/.local*, and update [alias](.bash_aliases) | | | Fancy uber-capable shell, inspired by PowerShell, but results are more column-and-row based.
<img src=images/rustacean.svg height=18/> [procs](https://github.com/dalance/procs) | `snap install procs` | `dnf install procs` | Colorful, flexible `ps` replacement.
<img src=images/rustacean.svg height=18/> [ripgrep](https://github.com/BurntSushi/ripgrep) | `apt install ripgrep` | `dnf install ripgrep` | Fast, developer-friendly grep-like code searcher.
<img src=images/rustacean.svg height=18/> [starship](https://starship.rs/) | [Install Fira Code Nerd Font](https://github.com/tonsky/FiraCode/wiki/Linux-instructions#installing-with-a-package-manager); Set as font in terminal application; [Set as font in VS Code](https://github.com/tonsky/FiraCode/wiki/VS-Code-Instructions); Follow *Quick Install* instructions using shell script. | same | Amazing developer-friendly, colorful, and rich shell prompt. **Config**: Copy *.config/starship.toml* to *~/.config*
<img src=images/C_Logo.png height=18> [tig](https://jonas.github.io/tig/) | `apt install tig` | | Fancy git browser. I also like the "git lola" variant given at [this blog post](https://medium.com/better-programming/5-git-tricks-that-i-wished-i-have-known-earlier-af1060881880)
<img src=images/C_Logo.png height=18> [vim](https://vim8.org/) | `apt install vim` | | Like trusty old `vi` but better, includes syntax highlighting.
<img src=images/rustacean.svg height=18/> [zellij](https://github.com/zellij-org/zellij) | `snap install --classic zellij` | `dnf install cargo` && `cargo install zellij` | Colorful, user-friendly, `tmux` replacement, that I usually use now.  **Config**: Copy *.config/zellij/config.yaml* to use Alt-S and Alt-Q instead, which avoids collision with *micro* editor keys.
<img src=images/rustacean.svg height=18/> [zenith](https://github.com/bvaisvil/zenith) | dpkg (see below) | | Colorful `top` replacement.

**cargo** = Just what it says. My favorite way to get Rust up and running is to `apt/dnf install rustup`, then issue the command, `rustup toolchain install stable`. That way, it's easy to update to a newer version of Rust later. Some tools, like diskonaut, have C++ dependencies to build as well. Om Ubuntu, `sudo apt install build-essintial`, on Fedora, `sudo dnf groupinstall "Development Tools" "Development Libraries"`.

**dpkg** = Find the appropriate
[non-musl-variant](https://www.musl-libc.org/faq.html) amd64 or armhf *.deb* release
file in the project releases page (generally just add **/releases** to the GitHub
project URL), `curl -LO [release-file-url]` for the appropriate .deb release file,
then `sudo dpkg -i [release-file]`.

**snap** is included on Ubuntu as its favored containerized application solution.
It can be [installed on Fedora](https://snapcraft.io/install/snap-store/fedora),
and is not supported on WSL. **flatpak** is in a way, the inverse: it is available
by default on Fedora, but must be installed on Ubuntu.

Nowadays, containerized solutions like [snap](https://snapcraft.io/about) or
[flatpak](https://flathub.org/about) are a common and useful way to install
software on Linux.

### For Python Development

* [uv](https://docs.astral.sh/uv/) - Fast replacement for pip, venv, et al, written in Rust.
* [wat](https://igrek51.github.io/wat/) - Interactive object introspection with colorful output.

### Maybe at some point?

Look promising, but I haven't really tried enough and/or made up my mind yet:

* I've been nervous about Nix & NixOS, but this tool looks to possibly give me 99%
  of what I might want from those, anyway, including having a lot of the above
  tools installed on any new machine easily: https://getfleek.dev/
* [nb](https://github.com/xwmx/nb) - CLI-based notebook that utilizes Git and can
  sync your notes using a remote git repository.
* [rulex](https://rulex-rs.github.io/) - I love that this "simplified" text matching language can generate non-trivial regexes for numeric ranges for me.
* [chezmoi](https://www.chezmoi.io/) - Manage dotfiles across machines leveraging Git, written in Go.

