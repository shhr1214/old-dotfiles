/bin/zsh

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/hara_s/.sdkman"
[[ -s "/home/hara_s/.sdkman/bin/sdkman-init.sh" ]] && source "/home/hara_s/.sdkman/bin/sdkman-init.sh"
