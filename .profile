# PS
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

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


# Some vars
export BASH_SILENCE_DEPRECATION_WARNING=1
set -o vi
export PYTHONDONTWRITEBYTECODE=1
export CLICOLOR=1
force_color_prompt=yes
color_prompt=yes
LS_COLORS='rs=0:di=1;94:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:.tar=01;31:.tgz=01;31:.arj=01;31:.taz=01;31:.lzh=01;31:.lzma=01;31:.tlz=01;31:.txz=01;31:.zip=01;31:.z=01;31:.Z=01;31:.dz=01;31:.gz=01;31:.lz=01;31:.xz=01;31:.bz2=01;31:.bz=01;31:.tbz=01;31:.tbz2=01;31:.tz=01;31:.deb=01;31:.rpm=01;31:.jar=01;31:.war=01;31:.ear=01;31:.sar=01;31:.rar=01;31:.ace=01;31:.zoo=01;31:.cpio=01;31:.7z=01;31:.rz=01;31:.jpg=01;35:.jpeg=01;35:.gif=01;35:.bmp=01;35:.pbm=01;35:.pgm=01;35:.ppm=01;35:.tga=01;35:.xbm=01;35:.xpm=01;35:.tif=01;35:.tiff=01;35:.png=01;35:.svg=01;35:.svgz=01;35:.mng=01;35:.pcx=01;35:.mov=01;35:.mpg=01;35:.mpeg=01;35:.m2v=01;35:.mkv=01;35:.webm=01;35:.ogm=01;35:.mp4=01;35:.m4v=01;35:.mp4v=01;35:.vob=01;35:.qt=01;35:.nuv=01;35:.wmv=01;35:.asf=01;35:.rm=01;35:.rmvb=01;35:.flc=01;35:.avi=01;35:.fli=01;35:.flv=01;35:.gl=01;35:.dl=01;35:.xcf=01;35:.xwd=01;35:.yuv=01;35:.cgm=01;35:.emf=01;35:.axv=01;35:.anx=01;35:.ogv=01;35:.ogx=01;35:.aac=00;36:.au=00;36:.flac=00;36:.mid=00;36:.midi=00;36:.mka=00;36:.mp3=00;36:.mpc=00;36:.ogg=00;36:.ra=00;36:.wav=00;36:.axa=00;36:.oga=00;36:.spx=00;36:.xspf=00;36:';
export LS_COLORS
export LSCOLORS=Exfxcxdxbxegedabagacad
alias ls='ls --color=auto'
alias ls='ls -G'

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

eval "$(/opt/homebrew/bin/brew shellenv)"

# Setting PATH for Python 3.10
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
alias python='python3.9'
alias pip='pip3'

# Setting PATH for Python 3.9
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"
export PATH
