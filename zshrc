# MY QUICK ALIASES

alias nv="nvim"
alias lv="lvim"
alias zp="z personal"
alias zh="z ~"
alias nr="npm run"
alias br="bun run"
alias nu="nvm use"
alias dev="br dev"
alias lg="lazygit"
alias nx="npx"
alias bx="bunx"
alias t="tmux"

# yes, i sometimes use this ones
alias ssds="sudo service docker start"
alias dcub="docker compose up --build"
alias dcu="docker compose up"

# OTHER ENVs 
session_name="developer"

# TMUX, if I recall I use this to set the tmux session name to the current dir

# 1. First you check if a tmux session exists with a given name.
tmux has-session -t=$session_name 2> /dev/null

# 2. Create the session if it doesn't exists.
if [[ $? -ne 0 ]]; then
 TMUX='' tmux new-session -d -s "$session_name"
fi

# 3. Attach if outside of tmux, switch if you're in tmux.
if [[ -z "$TMUX" ]]; then
 tmux attach -t "$session_name"
else
 tmux switch-client -t "$session_name"
fi

# OH DIVINE STEGOSAURUS WITH A HAT, TELL ME MY FORTUNE
fortune | cowsay -f stegosaurus
