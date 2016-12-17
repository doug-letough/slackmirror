#!/bin/sh

#ftp://ftp.slackware.no/slackware/slackware64-14.0/

VERSION=14.2
REMOTE_URL=rsync://rsync.slackware.no/slackware
LOCAL_REP=/var/www/htdocs/slackware
UUID=$(id -u)
UGID=$(id -g)

case $# in
  1)
    case $1 in
      -32)
         SLACK=slackware-$VERSION
      ;;
      -64)
        SLACK=slackware64-$VERSION
      ;;
      *)
         echo -e "Usage:\n\t$0 <-32 | -64>"
         exit 0
      ;;
    esac
    if [ -d $LOCAL_REP ]
    then
      clear
       rsync --delete -avrz --progress $REMOTE_URL/$SLACK $LOCAL_REP
#       rsync --delete --exclude="source/*" --exclude="slackware64/kde/*" --exclude="slackware64/kdei/*"  -avrz --progress $REMOTE_URL/$SLACK $LOCAL_REP
      chown -R $UUID:$UGID $LOCAL_REP
    else
      echo -e "$LOCAL_REP does not exist.\n Should I create it ?"
      read A
      case $A in
	y|Y)
	  mkdir -pv $LOCAL_REP
	  $0 $1
	  ;;
	*)
      	  exit 0
	  ;;
      esac
    fi
  ;;
  *)
    echo -e "Usage:\n\t$0 <-32 | -64>"
  ;;
esac
