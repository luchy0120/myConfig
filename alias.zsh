alias arda='/home/luqi/util/arda'
alias rm="rm -rf"
alias g=logon
logon(){
	sshpass -p 1234qwer ssh -o StrictHostKeyChecking=no root@gondolin-node-0$*
}
alias dexe=dockerexec
dockerexec(){
	_ docker exec -it $1 /bin/bash
}
alias dps="_ docker ps"
alias ds="_ docker save -o ./myImage "
alias dl="_ docker load -i " 
alias dp=dockerpull
dockerpull(){
	_ docker pull 10.239.45.219:15000/$1
}
alias dr=dockerrun
dockerrun(){
	_ docker run -it --net=host  $1 /bin/bash
}
alias drm=dockerremove
dockerremove(){
	_ docker stop $1 && _ docker rm $1
}
alias di="_ docker images"
alias dcc="IFS=$'\n' sudo docker rm $( sudo docker ps -a |grep 'Exited'|awk '{print $1}')"
alias cm=cm
cm(){
  chmod +x $1
}
alias port="netstat -tlp"
alias lip="ifconfig|grep inet|grep 10"
function chpwd() {
    emulate -L zsh
    ls -A
}
alias qq="nc -v -l -p 7878"
alias gtc=changeLastCommit 
function changeLastCommit() {
	git add .
	git commit --amend --no-edit
	git push -f $*
}
alias lc="nodejs ~/leetcode/node_modules/leetcode-cli/bin/leetcode"
alias gb="go fmt && go build"

