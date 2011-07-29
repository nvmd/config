
export JAVA_1_6=/usr/java/jdk1.6.0_24 
export JAVA_1_5=/usr/java/jdk1.5.0_22
export JAVA_HOME=$JAVA_1_6
export JAVA_FONTS=/usr/share/fonts/truetype
export ANT_HOME=/usr/share/ant
PATH=$JAVA_HOME/bin:$ANT_HOME/bin:$PATH
export CLASSPATH=.

export PATH=$PATH:~/bin

export LOCAL_HOME=/home/$USER
export LH=$LOCAL_HOME
alias cdh='cd $LOCAL_HOME'
mkcd()
{
	mkdir -p $1 && cd $1
}

export EDITOR=vim
export PAGER=less
export LESS=-R
export HISTSIZE=1000
export HISTCONTROL=ignoredups:ignorespace	# same as ignoreboth
export SVN_EDITOR=vim
export LANG=en_US.UTF-8

# store multi-line commands in history as a one-line
shopt -s cmdhist

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias diff='colordiff -ur'

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi


if [ -f "$HOME/.bash_prompt" ]; then
	. $HOME/.bash_prompt
fi

