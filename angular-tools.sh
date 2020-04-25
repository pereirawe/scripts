## !/bin/bash
## Convierte en ejecutable
## chmod u+x angular-install.sh

nodeVersion="$(ng --version | grep 'Node')"
angularVersion="$(ng --version | grep 'Angular' | head -n 1 )"

function install_angular(){
    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    sudo apt-get install -y nodejs
    sudo npm install npm@latest -g
    sudo npm install -g @angular/cli
    ng --version
}

function config_git(){
    git config credential.helper store
    git config credential.github.com.useHttpPath true
    git config user.email "pereirawe@gmail.com"
    git config user.name "William Pereira"
    git config user.user "pereirawe"
    git config github.email "pereirawe@gmail.com"
    git config github.name "William Pereira"
    git config github.user "pereirawe"
    
    cd  $appName
    git commit -m 'Inicial commit 2'
    git remote rm origin
    strRepo="https://github.com/pereirawe/"${appName}".git"
    git remote add origin $strRepo
    git push -u origin master
    git branch homol
    git branch --set-upstream-to=origin/homol homol
    git branch dev
    git checkout dev
    git push --set-upstream origin dev
    git branch --set-upstream-to=origin/dev dev
    git branch origin
    git status
}

function create_angular_proyect(){
    read -p "Escriba un nombre para la app: " appName
    ng new $appName
    cd $appName
    echo $PWD
    config_git
    npm start
    ng server
}

if [ -n "$angularVersion" ]
then
    read -p "Todo esta instalado y configurado, desea crear un proyecto?[y/n] " -n 1 -r
    echo  
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        create_angular_proyect;
    else
        [[ "$0" = "$BASH_SOURCE" ]] && exit 1 || return 1
    fi
else
    install_angular
    create_angular_proyect;
fi
