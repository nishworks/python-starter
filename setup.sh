# COLORS
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
YELLOW='\033[1;33m'
LIGHT_RED='\033[1;31m'
LIGHT_GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Make sure this script is sourced
if [[ "$(basename -- "$0")" == "setup.sh" ]]; then
    printf "${RED}Don't run $0, ${CYAN}source it like this - source setup.sh${NC}\n" >&2
    exit 0
fi

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
printf "${GREEN}setup.sh is located in $DIR ${NC}\n"

# Deactivate if inside a virtual environment
python -c 'import sys; print sys.real_prefix' 2>/dev/null && INVENV=1 || INVENV=0
if [[ "$INVENV" == 1 ]]; then
  printf "${GREEN}Inside Virtual environment, deactivating..${NC}\n"
  deactivate
fi

# Run tox to create virtual environment and install packages
rm -rf .tox
tox

# Setup alias for activating environment
alias activate='source $DIR/.tox/py27/bin/activate && printf "${LIGHT_RED}Activated: $(which python)${NC}\n"'
# Setup alias for opening docs
alias doc='open $DIR/docs/_build/html/index.html'
# Setup alias for running server in debug mode
alias run='activate && $DIR/run.sh'
# Alias for cd into project workspace
alias pspace='cd $DIR && pwd'

# Activate virtual environment
activate

# Print messages
printf '\n'
echo 'Following commands are now available for this shell session:'
printf '\n'
echo '  * run         Executes run.sh'
echo '  * pspace      cd into this directory from anywhere'
echo '  * ipython     A better python shell with auto-complete'
echo '  * activate    Activates the virtual environment'
echo '  * deactivate  Deactivates the virtual environment'
printf '\nAbove commands can be run from any directory'
printf '\n\n'