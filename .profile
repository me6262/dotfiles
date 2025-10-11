

# Added by Toolbox App
export PATH="$PATH:/home/hayden/.local/share/JetBrains/Toolbox/scripts"
if [ -f /usr/libexec/kactivitymanagerd ]; then
  /usr/libexec/kactivitymanagerd & disown
fi
. "$HOME/.cargo/env"
