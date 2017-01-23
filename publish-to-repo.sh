#!/bin/bash -e

# Jenkins Configuraitons Directory
cd $JENKINS_HOME/jobs

# set git details etc
source git-settings.sh

git_status="`git status -unormal 2>&1`"
if [[ "$git_status" =~ Not\ a\ git\ repo ]]; then
    echo 
	echo "NOT A GIT REPOSITORY"
	echo
	exit 1
elif [[ "$git_status" =~ nothing\ to\ commit ]]; then
    echo
	echo "NOTHING CHANGED !"
	echo
	exit 0
else
    git add --all .
	git commit -am "Automated Jenkins commit for reproduction"
	git push -q origin master
	exit 0
fi

exit 0
