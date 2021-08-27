CURRENT_DIR=$PWD
PARENT_DIR="$(dirname "$PWD")"
OUT_DIR=$PARENT_DIR/out-release
WALLET=wallet
PASSWD=123
DPORT=11081
RPORT=11087
DATA_DIR=$CURRENT_DIR/data1
LOG_LEVEL=1
QT_PREFIX_PATH=$HOME/opt/Qt/6.0.3/gcc_64/

if ! [ -f "$DATA_DIR/$WALLET" ]; then
  LD_LIBRARY_PATH=$OUT_DIR/lib:$QT_PREFIX_PATH/lib $OUT_DIR/bin/gyro-wallet-cli \
    --password $PASSWD \
    --daemon-port $DPORT \
    --daemon-ssl disabled \
    --auto-sync-sms \
    --no-ask-password \
    --no-confirm-backlog \
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
  --zyre-group wallet-group-1 \
  --zyre-net gyro-public-1 \
  --zyre-pin 123 \
  --log-level $LOG_LEVEL \
  --log-file $DATA_DIR/gyro-cli.log \
  --trusted-daemon
