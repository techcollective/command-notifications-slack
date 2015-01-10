# Add these lines to your bashrc with:
#	cat bashrc >> ~/.bashrc

function rsync() { command rsync "$@" && command slack-notify "rsync $@";}
function ddrescue() { command ddrescue "$@" && command slack-notify "ddrescue $@";}
export -f rsync
export -f ddrescue
