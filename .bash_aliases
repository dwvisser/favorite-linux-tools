alias python38="docker run -it --rm --name py38 -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3.8.12-alpine python"
alias python39="docker run -it --rm --name py39 -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3.9.9-alpine python"
alias python310="docker run -it --rm --name py310 -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3.10.0-alpine python"
alias python311="docker run -it --rm --name py311 -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3.11.0a2-alpine python"
alias exag='exa --long --git --header --icons'
alias nu="~/.local/nu_0_23_0_linux/nushell-0.23.0/nu"

# see https://blog.kitware.com/cmake-building-with-all-your-cores/
let num_procs=`nproc`+1
alias mk="make -j$num_procs"
