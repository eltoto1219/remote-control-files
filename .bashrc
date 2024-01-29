# PS
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
BASH_SILENCE_DEPRECATION_WARNING=1
PYTHONDONTWRITEBYTECODE=1
CLICOLOR=1
force_color_prompt=yes
color_prompt=yes
# LS_COLORS='rs=0:di=1;94:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:.tar=01;31:.tgz=01;31:.arj=01;31:.taz=01;31:.lzh=01;31:.lzma=01;31:.tlz=01;31:.txz=01;31:.zip=01;31:.z=01;31:.Z=01;31:.dz=01;31:.gz=01;31:.lz=01;31:.xz=01;31:.bz2=01;31:.bz=01;31:.tbz=01;31:.tbz2=01;31:.tz=01;31:.deb=01;31:.rpm=01;31:.jar=01;31:.war=01;31:.ear=01;31:.sar=01;31:.rar=01;31:.ace=01;31:.zoo=01;31:.cpio=01;31:.7z=01;31:.rz=01;31:.jpg=01;35:.jpeg=01;35:.gif=01;35:.bmp=01;35:.pbm=01;35:.pgm=01;35:.ppm=01;35:.tga=01;35:.xbm=01;35:.xpm=01;35:.tif=01;35:.tiff=01;35:.png=01;35:.svg=01;35:.svgz=01;35:.mng=01;35:.pcx=01;35:.mov=01;35:.mpg=01;35:.mpeg=01;35:.m2v=01;35:.mkv=01;35:.webm=01;35:.ogm=01;35:.mp4=01;35:.m4v=01;35:.mp4v=01;35:.vob=01;35:.qt=01;35:.nuv=01;35:.wmv=01;35:.asf=01;35:.rm=01;35:.rmvb=01;35:.flc=01;35:.avi=01;35:.fli=01;35:.flv=01;35:.gl=01;35:.dl=01;35:.xcf=01;35:.xwd=01;35:.yuv=01;35:.cgm=01;35:.emf=01;35:.axv=01;35:.anx=01;35:.ogv=01;35:.ogx=01;35:.aac=00;36:.au=00;36:.flac=00;36:.mid=00;36:.midi=00;36:.mka=00;36:.mp3=00;36:.mpc=00;36:.ogg=00;36:.ra=00;36:.wav=00;36:.axa=00;36:.oga=00;36:.spx=00;36:.xspf=00;36:';
LSCOLORS=Exfxcxdxbxegedabagacad
AWS_PROFILE=keeptruckin
PATH="/usr/local/bin:$PATH:/usr/bin:/usr/sbin"
CDPATH="/Users/antoniomendoza/motive/kt/src/amp/services/gen_ai_chatbot/broker/:/Users/antoniomendoza/kt/src/rnd/vision/models/road_facing/:$CDPATH"
GRPC_PYTHON_BUILD_SYSTEM_OPENSSL=1
GRPC_PYTHON_BUILD_SYSTEM_ZLIB=1
CFLAGS="-I/opt/homebrew/opt/openssl/include"
LDFLAGS="-L/opt/homebrew/opt/openssl/lib"
NEO4J_HOME="/Users/antoniomendoza/Library/Application Support/Neo4j Desktop/Application/relate-data/dbmss/dbms-70bf267b-c6d6-4133-b35e-64a6b60ad965"

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PS1
export BASH_SILENCE_DEPRECATION_WARNING
export PYTHONDONTWRITEBYTECODE
export CLICOLOR
export LSCOLORS
export AWS_PROFILE
export PATH
export CDPATH
export GRPC_PYTHON_BUILD_SYSTEM_OPENSSL
export GRPC_PYTHON_BUILD_SYSTEM_ZLIB
export CFLAGS
export LDFLAGS
export force_color_prompt
export color_prompt



set -o vi

eval "$(/opt/homebrew/bin/brew shellenv)"
. "$HOME/.cargo/env"



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/antoniomendoza/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/antoniomendoza/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/antoniomendoza/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/antoniomendoza/Downloads/google-cloud-sdk/completion.bash.inc'; fi

eval "$(/opt/homebrew/bin/brew shellenv)"



# source ~/ml/bin/activate


alias gs='git status'
alias gp='git pull'
alias gph='git push'
alias gd='git diff | mate'
alias gau='git add --update'
alias gc='git commit -m'
alias gca='git commit -v -a'
alias gb='git branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'
alias gfo='git fetch origin'
alias ls='ls --color=auto'
alias ls='ls -G'


alias vi=nvim
alias pip=pip3
alias de="deactivate"
alias dec="conda deactivate"
alias cb="conda activate base"
# alias python=/usr/bin/python3
# alias pip="/usr/bin/python3 -m pip"
alias ml="source ~/venv_ml/bin/activate"
alias venv="source ~/venv/bin/activate"
alias mnet="source ~/mnet/bin/activate"
alias uf="source ~/uf/bin/activate"
alias python=python3
alias pip=pip3
PATH="${PATH}:/opt/X11/bin"

# MANAGED BY KTMR/ktmr-installer/roles/homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
# END MANAGED BY KTMR/ktmr-installer/roles/homebrew
# MANAGED BY KTMR/ktmr-installer/roles/nix
# source nix into the environment.
if ! command -v nix &>/dev/null; then
  if [[ -r /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh ]]; then
    source /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
  elif [[ -r "$HOME/.nix-profile/etc/profile.d/nix.sh" ]]; then
    source "$HOME/.nix-profile/etc/profile.d/nix.sh"
  fi
fi

# hook direnv into the shell
if command -v direnv &>/dev/null; then
  eval "$( direnv hook "${SHELL}" )"
fi
# END MANAGED BY KTMR/ktmr-installer/roles/nix
# MANAGED BY KTMR/ktmr-installer/roles/ktmr
if [[ -r "${XDG_CONFIG_HOME:-${HOME}/.config}/ktmr/load.sh" ]]; then
  source "${XDG_CONFIG_HOME:-${HOME}/.config}/ktmr/load.sh"
fi
# END MANAGED BY KTMR/ktmr-installer/roles/ktmr
