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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/antoniomendoza/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/antoniomendoza/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/antoniomendoza/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/antoniomendoza/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
PATH="${PATH}:/opt/X11/bin"



export PATH
alias vim=nvim
alias vi=nvim

export ANDROID_HOME=~/Library/Android/sdk/
export PATH=$PATH:~/android-sdks/platform-tools/
export PATH=$PATH:~/android-sdks/tools/


if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
