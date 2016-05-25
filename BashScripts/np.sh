npu

asadmin@c634yuvnhpg01:/appserver/np/npu/scripts> more npu
#!/bin/bash
#
# newsplusupdater Newsplus updater ingests JMS feed from Swift News updater and generates metadata,
#
# chkconfig: 2345 15 85
# description: Newsplus updater
#
# Copyright Thomson Reuters
#
### BEGIN INIT INFO
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Newsplus updater
# Description: Newsplus updater ingests JMS feed from Swift News updater and generates metadata, indexes and persists feed.
### END INIT INFO

PIDFILE=/appserver/np/npu/scripts/npu.pid
PATH=$PATH:/appserver/np/npu
prog="NewsplusUpdater"
NEWSPLUS_USER=asadmin
RETVAL=0

# Source function library.
#. /etc/rc.d/init.d/functions


usage ()
{
    echo "Usage: service $prog {start|stop|status|restart}"
    RETVAL=1
}

start()
{
        #check if process is running
        if [ -f $PIDFILE ]; then
                echo $"$prog is already running...stopping process"
                 stop
        fi
        echo -n $"Starting $prog: "
        su - $NEWSPLUS_USER /appserver/np/npu/scripts/start-npu.sh realtime realtime 3002
}

stop()
{
        echo -n $"Stopping $prog: "
        processPid=$(<"$PIDFILE")
        kill -1 $processPid
        echo -n $"Pipeline shutdown initiated "
        rm -rf $PIDFILE
}

restart()
{
        stop
        start
}

status()
{

        if [ -f $PIDFILE ]; then
                processPid=$(<"$PIDFILE")
                if  ps aux | grep "$processPid" | grep -v "grep"
                then
                        echo -n $"$prog running, pid=$processPid"
                else
                        echo -n $"$prog not running"
                fi
        else
                echo -n $"$prog not running"
        fi


}
case "$1" in
    start|stop|restart|condrestart|try-restart|force-reload)
#        [ `id -u` != "0" ] && exit 4 ;;
esac

case "$1" in
    start) start; RETVAL=$? ;;
    stop) stop; RETVAL=$? ;;
    status) status -p $PIDFILE $prog ; RETVAL=$? ;;
    restart) restart; RETVAL=$? ;;
    reload) RETVAL=3 ;;
    *) usage ; RETVAL=2 ;;
esac

exit $RETVAL

asadmin@c634yuvnhpg01:/appserver/np/npu/scripts>

