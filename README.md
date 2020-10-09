# My Favorite Linux Tools

Many of these are actually cross-platform.

## Terminal-based tools

* [autojump](https://github.com/wting/autojump) - Lets me change working directory
  to recently used directories via quick pattern match. `apt install autojump`
  and consult man file for launching in your *.bashrc*.
* [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt) - Fancy bash
  prompt whenever you are in a Git workspace folder. Shows branch and status with
  respect to remote, as well as indication of exit code of most recently executed
  command.
* [bat](https://github.com/sharkdp/bat) - Think `cat` with paging and syntax
  highlighting.
* [bpytop](https://github.com/aristocratos/bpytop) - Fancy `top` replacement. I
  install it using `python3 -m pip install --user bpytop`, and add an alias to run
  `python3 -m bpytop`.
* [duf](https://github.com/muesli/duf) - Easy-on-the-eyes `du`/`df` replacement.
* [ripgrep](https://github.com/BurntSushi/ripgrep) - Fast, developer-friendly
  grep-like code searcher.
* [tig](https://jonas.github.io/tig/) - Fancy git browser. The page doesn't state it,
  but in Ubuntu, this is just an `apt install tig` away.

### Candidates

These look promising, but I haven't really tried them yet:

* [nb](https://github.com/xwmx/nb) - CLI-based notebook that utilizes Git and can
  sync your notes using a remote git repository.
