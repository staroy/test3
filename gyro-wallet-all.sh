TERMINAL=mate-terminal
$TERMINAL --tab --title="wallet-2" --command ./gyro-wallet-2.sh </dev/null &>/dev/null &
$TERMINAL --tab --title="wallet-3" --command ./gyro-wallet-3.sh </dev/null &>/dev/null &
./gyro-wallet-1.sh
