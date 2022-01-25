# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi




autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[red]%}@%{$fg[magenta]%}%M %{$fg[white]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


zstyle ':completion:*' auto-description '%d'
zstyle ':completion:*' completer _list _oldlist _complete _match _prefix
zstyle ':completion:*' condition 1
zstyle ':completion:*' format '%d'
zstyle ':completion:*' menu select
zmodload zsh/complist
zstyle :compinstall filename '/home/xsharawi/.zshrc'
autoload -Uz compinit
set -o HIST_IGNORE_ALL_DUPS 
compinit
_comp_options+=(globdots)
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install


alias ls='ls -a --color=auto'
alias ll='ls -alh --color=auto'
alias grep='grep --color=auto'
alias a='./a'
alias divs='./divs'
alias stress='./stress.sh'
alias upapt='sudo apt update && sudo apt upgrade -y'
alias so='source /home/xsharawi/.zshrc'
# vi mode

neofetch

sharawi(){
	stress solution brute
}

p(){
	cd /home/xsharawi/Desktop/practice
}

vimrc(){
	vim /home/xsharawi/vimrc
}

neo(){
	clear && neofetch && vifm-pause && clear
}

zrc(){
	vim /home/xsharawi/.zshrc && so
}

bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char






# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.



# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line


#insensitive auto complete

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'












source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
