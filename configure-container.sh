#!/bin/bash -x
#
#
set -x

function main()
{
	if [ "$DOCKERUSER" = "" ]; then echo "Environment variable DOCKERUSER was not set during docker run command. $DOCKERUSER"; exit -1; fi

	installSshKeys
	configureGit
	configureDownloads
}

function installSshKeys()
{
    echo "installSshKeys"
	if [ ! -d "/home/developer/$DOCKERUSER/.ssh" ]; then echo "/home/developer/$DOCKERUSER/.ssh does not exist"; else
		echo "setting link to .ssh"
		ln -s /home/developer/$DOCKERUSER/.ssh /home/developer/.ssh;
	fi
}


function configureGit()
{
    echo "configureGit"
	if [ "$GITUSER" = "" ]; then echo "Environment variable GITUSER was not set during docker run command. $GITUSER"; exit -1; else
	   echo "setting git user as $GITUSER"
	   git config --global user.name "$GITUSER"
	fi
	if [ "$GITEMAIL" = "" ]; then echo "Environment variable GITUSER was not set during docker run command. $GITUSER"; exit -1; else
	   echo "setting git email as $GITEMAIL"
	   git config --global user.email "$GITEMAIL"
	fi
}

function configureDownloads()
{
    echo "configureDownloads"
	mkdir -p /home/developer/$DOCKERUSER/Downloads/
    sudo cp -nr /home/developer/Downloads/* /home/developer/$DOCKERUSER/Downloads/
    rm -fr /home/developer/Downloads
    ln -s /home/developer/$DOCKERUSER/Downloads /home/developer/Downloads
}

main
