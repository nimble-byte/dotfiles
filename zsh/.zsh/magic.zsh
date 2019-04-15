# magically set tty colors
if [ "$TERM" = "linux" ]; then
    # normal colors
    echo -en "\e]P0263238" #black
    echo -en "\e]P1A54242" #red
    echo -en "\e]P28BC34A" #green
    echo -en "\e]P3F7C42A" #yellow
    echo -en "\e]P42196F3" #blue
    echo -en "\e]P59575CD" #magenta
    echo -en "\e]P600BCD4" #cyan
    echo -en "\e]P7ECEFF1" #white
    # bright colors
    echo -en "\e]P8617F8A" #bright-black
    echo -en "\e]P9EC407A" #bright-red
    echo -en "\e]PA9CCC65" #bright-green
    echo -en "\e]PBFFB74D" #bright-yellow
    echo -en "\e]PC42A5F5" #bright-blue
    echo -en "\e]PDB39DDB" #bright-magenta
    echo -en "\e]PE26C6DA" #bright-cyan
    echo -en "\e]PFFFFFFF" #bright-white
    clear #for background artifacting
fi

# set dircolors
eval `/usr/bin/dircolors -b ~/.dircolors`
