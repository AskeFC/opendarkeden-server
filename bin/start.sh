#!/bin/sh
killall gameserver
killall sharedserver
killall loginserver

sleep 1
cd /home/darkeden/vs/bin

rm -rf loginserver*.out
rm -rf gameserver*.out
rm -rf sharedserver*.out

sleep 60 # wait for DB container startup
./loginserver -f ../conf/loginserver.conf &
echo "login server started"

sleep 1
./sharedserver -f ../conf/sharedserver.conf &
echo "shared server started"

sleep 1
./gameserver -f ../conf/gameserver.conf &
echo "game server started"


echo "ALL - START"

tail -f /dev/null
