<!-- markdownlint-disable html -->
# My Favorite Linux Tools

Many of these are actually cross-platform. For context, I mostly use

1. [Linux Mint](https://www.linuxmint.com/) 19.x, based off of
   [Ubuntu](https://ubuntu.com) 18.04 on an x86_64 laptop.
2. [Raspbian](https://www.raspbian.org/) Buster on a
   [Raspberry Pi 2](https://www.raspberrypi.org/products/raspberry-pi-2-model-b/).
3. At work, I use Ubuntu 18.04 virtual machines, and to a lesser extent a
   [WSL](https://docs.microsoft.com/en-us/windows/wsl/) 1 instance of Ubuntu
   18.04.
4. Speaking of WSL, I also use Ubuntu 20.04 via WSL 2 a little bit on a home
   machine.

 I am also a heavy user of the default
 [bash](https://www.gnu.org/software/bash/) shell.

## Terminal-based tools

 I've marked all tools with icons indicating the primary implmentation language.
 I really like tools built using modern (relative to, say, C
 <img src=images/C_Logo.png height=18>) languages like Rust
<a href=https://commons.wikimedia.org/wiki/File:Rustacean-orig-noshadow.svg><img src=images/rustacean.svg height=18/></a>,
Go (<a href=https://github.com/golang-samples/gopher-vector><img src=images/gopher.svg height=18/></a>), Python
(<a href=https://commons.wikimedia.org/wiki/File:Python-logo-notext.svg><img src=images/python.svg height=18/></a>) and Ruby <img src=images/ruby.svg height=18>,

Name | Preferred Install Method | Description
---- | --------------------------- | -----------
<img src=images/python.svg height=18/> [autojump](https://github.com/wting/autojump) | `apt intall autojump`, then see man file for launching in your *.bashrc* | Lets me change working directory to recently used directories via quick pattern match.
<img src=images/rustacean.svg height=18/> [bandwhich](https://github.com/imsnif/bandwhich) | Unzip executable from releases tarball to */usr/local/bin* | Very nice presentation of what programs are consuming bandwith on connections to where. Needs `sudo` to run.
<img src=images/rustacean.svg height=18/> [bat](https://github.com/sharkdp/bat) | dpkg (see below) | Colorful `cat` with line numbers, paging, and syntax highlighting.
<img src=images/gopher.svg height=18/> [duf](https://github.com/muesli/duf) | dpkg (see below) | Easy-on-the-eyes `du`/`df` replacement.
<img src=images/gopher.svg height=18> [fzf](https://github.com/junegunn/fzf) | See the [Using git](https://github.com/junegunn/fzf#using-git) instructions so [keyboard shortcuts](https://github.com/junegunn/fzf#key-bindings-for-command-line) are installed to the bash environment. | Powerful "command-line fuzzy finder" that is hard to describe adequately. Just watch [this YouTube video](https://youtu.be/qgG5Jhi_Els).
<img src=images/rustacean.svg height=18/> [hexyl](https://github.com/sharkdp/hexyl/) | dpkg (see below) | Colorful hexadecimal binary file viewer.
<img src=images/gopher.svg height=18/> [micro](https://github.com/zyedidia/micro) | `snap install --classic micro` Also make sure to `apt install xclip`, and I have found it necessary on some machines to `export DISPLAY=:0.0` in my *.bashrc* file. | Nano replacement with syntax highlighting.
<img src=images/rustacean.svg height=18/> [nushell](https://github.com/nushell/nushell) | Download tarball release file, extract under *~/.local*, and update [alias](.bash_aliases) | Fancy uber-capable shell, inspired by PowerShell, but results are more column-and-row based.
<img src=images/rustacean.svg height=18/> [procs](https://github.com/dalance/procs) | `snap install procs` | Colorful, flexible `ps` replacement.
<img src=images/rustacean.svg height=18/> [ripgrep](https://github.com/BurntSushi/ripgrep) | `snap install --classic ripgrep` | Fast, developer-friendly grep-like code searcher.
<img src=images/rustacean.svg height=18/> [starship](https://starship.rs/) | Copy Fira Code Nerd Font *\*.ttf* files to *~/.fonts*; Set as font in terminal application; Follow *Quick Install* instructions using shell script. | Amazing developer-friendly, colorful, and rich shell prompt.
<img src=images/C_Logo.png height=18> [tig](https://jonas.github.io/tig/) | `apt install tig` | Fancy git browser. I also like the "git lola" variant given at [this blog post](https://medium.com/better-programming/5-git-tricks-that-i-wished-i-have-known-earlier-af1060881880)
<img src=images/C_Logo.png height=18> [tmux](https://github.com/tmux/tmux) | `apt install tmux` | Terminal Multiplexer. Its [man page](https://linux.die.net/man/1/tmux) is excellent. The best "plain English" docs I've seen so far are at [The Tao of tmux](https://leanpub.com/the-tao-of-tmux/read).
<img src=images/ruby.svg height=18> [tmuxinator](https://github.com/tmuxinator/tmuxinator) | `apt install tmuxinator` | Easily define *tmux* layouts/configs in YAML. This wins out over *tmuxp*, which is implemented and scriptable in my beloved Python, because it seems to be more actively developed.
<img src=images/C_Logo.png height=18> [vim](https://vim8.org/) | `apt install vim` | Like trusty old `vi` but better, includes syntax highlighting.
<img src=images/rustacean.svg height=18/> [zenith](https://github.com/bvaisvil/zenith) | dpkg (see below) | Colorful `top` replacement.

**dpkg** = Find the appropriate
[non-musl-variant](https://www.musl-libc.org/faq.html) amd64 or armhf *.deb* release
file in the project releases page (generally just add **/releases** to the GitHub
project URL), `curl -LO [release-file-url]` for the appropriate .deb release file,
then `sudo dpkg -i [release-file]`.

**PPA** is described well on [itsfoss.com](https://itsfoss.com/ppa-guide/):

> PPA stands for Personal Package Archive. The PPA allows application developers and Linux users to create their own repositories to distribute software. With PPA, you can easily get newer software version or software that are not available via the official Ubuntu repositories.

Nowadays, containerized solutions like [snap](https://snapcraft.io/about) or
[flatpak](https://flathub.org/about) are the preferred, and arguably more secure, ways
to independently deploy Linux software, but PPA's do still exist.

### Candidates

These look promising, but I haven't really made up my mind about them yet:

* [exa](https://github.com/ogham/exa) - Fancy `ls` replacement implemented in
  Rust. I like that it defaults to colorful output with human readable file sizes.
  It has a `--git` option that if you are in a worktree, shows Git status of files
  and folders. My hangup is that it doesn't really have a good install experience
  prior to Ubuntu 20.10 (where it has `apt` support). I have downloaded the Linux
  executable and put it in *~/.local/bin*, and run its accompanying Bash completion
  script in my *.bashrc* too.
* [nb](https://github.com/xwmx/nb) - CLI-based notebook that utilizes Git and can
  sync your notes using a remote git repository.
* [zellij](https://github.com/zellij-org/zellij) - Rust-based "batteries included"
  (i.e., supports YAML-based layout files) tmux replacement. As of this writing
  (2021-04-29), they just released their first beta, which doesn't yet support
  persistent sessions, which is what I really want. I'm paying attention, though!
