# slackmirror

**slackmirror.sh** is a simple bash script written by Doug Le Tough.

* This script will :
 Automatically mirror the choosen version of a slackware hierarchy tree on to you computer using rsync.

* Requirements :
This script should run with any standard Slackware installation and you will need these softwares installed :
rsync

## Installation instructions :

Copy and paste to your favorite text editor the following source code

1 - Save it where it suits you (ie. /usr/local/bin/slackmirror.sh)

As root user, make it executable with this command line : chmod +x /usr/local/bin/slackmirror.sh

2 - Browse the source code and define the following variables to suit your needs :

* VERSION : The Slackware version number you want to mirror (actually 14.2). This could be set to current if needed.
* REMOTE_URL : The distant rsync folder from the slackmirror.sh script will get the files (default value should be good for everyone)
* LOCAL_REP : The local folder where the slackmirror.sh script will synchronize with the slackware current tree

You can also exclude some folders from the synchronization process by setting the --exclude parameter on line #25.

The default is set to exclude the source subtree.

3 - That's all folks

## Usage :
 
The slackmirror.sh script need some mandatory arguments to run properly :

The slackmirror.sh script allow you to synchronize with the 32 bits and the 64 bits Slackware tree :

This is done by giving the -32 parameter for 32 bits or the -64 parameter for 64 bits to the slackmirror.sh :

slackmirror.sh -32 or slackmirror.sh -64

You can synchronize both 32 bits and 64 bits slackware tree under the same directory (LOCAL_REP) without any problem.

This script is released under the **WTFPL 2.0** and you can send me an email for :

* Bug reports
* Suggestions
* Insults
* Whatever reasons you want

to : doug.letough<at>free.fr (replace <at> by a valid @) 
