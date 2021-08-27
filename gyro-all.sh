TERMINAL=mate-terminal
$TERMINAL --tab --title="gyro-2" --command ./gyro-2.sh </dev/null &>/dev/null &
$TERMINAL --tab --title="gyro-3" --command ./gyro-3.sh </dev/null &>/dev/null &
./gyro-1.sh
