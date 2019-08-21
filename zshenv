## 
# Env variables
##

# Sets VISUAL and EDITOR env var depending on available binaries
if type nvim &> /dev/null; then
    export VISUAL=nvim
    export EDITOR=nvim
elif type vim &> /dev/null; then
    export VISUAL=vim
    export EDITOR=vim
else
    export VISUAL=vi
    export EDITOR=vi
fi

# Sets BROWSER variable
if type qutebrowser &> /dev/null; then
    export BROWSER=qutebrowser
elif type firefox &> /dev/null; then
    export BROWSER=firefox
elif type chromium &> /dev/null; then
    export BROWSER=chromium
fi
