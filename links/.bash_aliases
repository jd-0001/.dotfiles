alias dr='f(){ python manage.py "$@" --settings=core.settings.dev; unset -f f; }; f'
alias ds='python manage.py runserver --settings=core.settings.dev'
alias dsh='python manage.py shell --settings=core.settings.dev'
alias dmm='python manage.py makemigrations --settings=core.settings.dev'
alias dm='python manage.py migrate --settings=core.settings.dev; echo "---Please update dbdiagram.io---"'
alias py='new-py-emulator'
alias exp='f(){ xdg-open "$@"; unset -f f; }; f'
alias pip=pip3
alias cdback="cd ~/Projects/portal-name/src/backend"
alias cdts="cd ~/Projects/portal-name/typesense/scripts"
alias aenvp="source ~/Projects/portal-name/env_portal/bin/activate"
alias aenvt="source ~/pylab/env_test/bin/activate"
alias rebash="source ~/.bashrc"
alias env_c="python3 -m venv"
alias nvm_default="nvm alias default"
alias cdfod="cd ~/Desktop/for-one-day"
alias pip-upgrade-all="pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias pip-to-txt="pip freeze > requirements.txt"
alias pip-list-outdated="pip3 list --outdated"
alias pip-exist='f(){ pip list | grep "$@"; unset -f f; }; f'
alias pip-upgrade='f(){ pip3 install --user --upgrade "$@"; unset -f f; }; f'
alias take='f(){ mkdir "$@"; cd "$@"; unset -f f; }; f'
alias pserver='python -m http.server 8000'
alias deployrr='cd /home/bapu/Projects/portal-name/src/frontend; yarn build; scp -r dist rr@138.68.241.180:/home/rr/resourceroot/app/src/frontend/; ssh rr "pm2 restart quasar-ssr";'
alias cpcopy='xclip -selection clipboard'
alias cppaste='xclip -o'
alias python=python3
alias iprr="echo '138.68.241.180'"
alias cdtds='cd ~/Desktop/tds'
alias ydl='f(){ youtube-dl -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" --merge-output-format mp4 "$@"; unset -f f; }; f'
alias spython='sudo $(printenv VIRTUAL_ENV)/bin/python3'
alias alembic-auto='f(){ alembic revision --autogenerate -m "$@"; unset -f f; }; f'
alias kvlc='kill -9 $(pidof vlc)'
alias youtube-download="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4"
alias penva='source $(poetry env info -p)/bin/activate'
alias 'glog'="git log --color --graph --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'"
alias untar='tar -zxvf '
alias gen-pass="openssl rand -base64 20"
alias ex-ip='curl ipblue.io/ip'
alias ip='hostname -I'
alias nx-syntax='sudo nginx -t'
alias nx-re='sudo systemctl restart nginx'
alias service-status='sudo systemctl status'
alias gignore='f(){ wget -q "https://raw.githubusercontent.com/github/gitignore/main/$@.gitignore"; mv "$@.gitignore" .gitignore; unset -f f; }; f'