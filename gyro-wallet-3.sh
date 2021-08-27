CURRENT_DIR=$PWD
PARENT_DIR="$(dirname "$PWD")"
OUT_DIR=$PARENT_DIR/out-release
WALLET=wallet
PASSWD=123
DPORT=20011
RPORT=20017
DATA_DIR=$CURRENT_DIR/data3
LOG_LEVEL=1
QT_PREFIX_PATH=$HOME/opt/Qt/6.0.3/gcc_64/

if ! [ -f "$DATA_DIR/$WALLET" ]; then
  LD_LIBRARY_PATH=$OUT_DIR/lib:$QT_PREFIX_PATH/lib $OUT_DIR/bin/gyro-wallet-cli \
    --password $PASSWD \
    --daemon-port $DPORT \
    --daemon-ssl disabled \
    --auto-sync-sms \
    --no-confirm-backlog \
    --no-ask-password \
    --inactivity-lock-timeout 0 \
    --generate-new-wallet $DATA_DIR/$WALLET \
    --config-file gyro.conf \
    --trusted-daemon \
    --non-deterministic \
    --log-level $LOG_LEVEL \
    --log-file $DATA_DIR/gyro-cli.log \
    address
fi

LD_LIBRARY_PATH=$OUT_DIR/lib:$QT_PREFIX_PATH/lib $OUT_DIR/bin/gyro-wallet-cli \
  --password $PASSWD \
  --daemon-port $DPORT \
  --daemon-ssl disabled \
  --auto-sync-sms \
  --no-ask-password \
  --no-confirm-backlog \
  --inactivity-lock-timeout 0 \
  --wallet-file $DATA_DIR/$WALLET \
  --config-file gyro.conf \
  --zyre-group wallet-group-3 \
  --zyre-net gyro-public-1 \
  --zyre-pin 123 \
  --log-level $LOG_LEVEL \
  --log-file $DATA_DIR/gyro-cli.log \
  --trusted-daemon
