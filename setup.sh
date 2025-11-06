# start of course by figuring out logic to detect which os we are on 
#
# then figure out the most crossplat methods of getting version specific packages on system like cargo install and various version managers
# then for other packages, have it download those
# we need:
# stow tmux nvim (cargo bob) npm (for lsp servers) gh gitui ripgrep yazi ranger vim (fallback) ncspot bat
# uutils (maybe) fd fzf zsh (or maybe pivot to fish?) mprocs just gcc g++
# gdb python3 man most eza starship btop zellij poop valgrind distrobox delta nmtui fastfetch cmake llvm


apt_pkglist = "stow tmux npm ranger github-cli gcc g++ fzf zsh fish gdb python3 valgrind fastfetch cmake btop man most vim curl"
pacman_pkglist = "stow tmux npm ranger github-cli gcc base-devel fzf zsh fish gdb python3 valgrind fastfetch cmake btop man most vim curl"
dnf_pkglist = "stow tmux npm ranger gh gcc g++ fzf zsh fish gdb python3 valgrind fastfetch cmake btop man most vim curl"


package_managers = ("apt", "dnf", "zypper", "pacman")
echo "Installed package managers on this Linux system:"
for manager in "${package_managers[@]}"; do
    if command -v "$manager" > /dev/null 2>&1; then
        echo "-$manager"
    fi
done

# Detect distro
if [[ -f /etc/os-release ]]; then
    distro=$(source /etc/os-release && echo $NAME)
else
    distro="*Unknown*"
fi
echgo "Detected distro: $distro"

# Default package manager, if any
echo -n "Default distro package manager: "
if [[ "$distro" == "Ubuntu" || "$distro" == "Debian" || "$distro" == "Linux Mint" ]]; then
    echo "apt"
    sudo apt install -y $apt_pkglist
elif [[ "$distro" == "Fedora" || "$distro" == "Red Hat"* ]]; then
   echo "dnf"
   sudo dnf install -y $dnf_pkglist
elif [[ "$distro" == "CentOS" ]]; then
   echo "yum"
elif [[ "$distro" == "Arch Linux" || "$distro" == "Manjaro" ]]; then
    echo "pacman"
    sudo pacman -S $pacman_pkglist
elif [[ "$distro" == "openSUSE" ]]; then
    echo "zypper"
fi
if [ -v CARGO_HOME ]; then
    echo "cargo already installed"
else
    echo "cargo not installed/defined on path. installing..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

echo "Installing relevant crates"
export PATH=$PATH:$HOME/.cargo/bin
#installing this means we can directly download binaries instead of going through all the rust bullshit
cargo install cargo-binstall
. "$HOME/.cargo/env"
cargo-binstall -y zoxide ncspot bat bob ripgrep yazi eza mprocs delta just starship
bob use nightly

mkdir ~/Documents/projects
stow .
