#
# ~/.bashrc
#

export PATH=/home/tyler/.bin:$PATH

. ~/.bash_aliases

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


if [ "$TERM" = "linux" ]; then
	setfont Lat2-TerminusBold22x11.psf.gz
	echo -en "\e]P0eec8a8"
	echo -en "\e]P1c92e2e"
	echo -en "\e]P268b374"
	echo -en "\e]P39e9c95"
	echo -en "\e]P45a6f9e"
	echo -en "\e]P5a077a8"
	echo -en "\e]P6266870"
	echo -en "\e]P7ad003a"
	echo -en "\e]P8878377"
	echo -en "\e]P9ff0d4d"
	echo -en "\e]Pa62704c"
	echo -en "\e]Pbba9163"
	echo -en "\e]Pc739deb"
	echo -en "\e]Pdd068ed"
	echo -en "\e]Pe5eb8ad"
	echo -en "\e]Pfa9acc2"

	clear
fi
