alias python38="docker run -it --rm --name py38 -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3.8.3 python"
alias python39="docker run -it --rm --name py39 -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3.9.0b3 python"
alias ffdev="~/.local/firefox-dev/firefox"
alias top="python3 -m bpytop"