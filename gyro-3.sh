CURRENT_DIR=$PWD
PARENT_DIR="$(dirname "$PWD")"
OUT_DIR=$PARENT_DIR/out-release
DATA_DIR=$CURRENT_DIR/data3

LD_LIBRARY_PATH=$OUT_DIR/lib $OUT_DIR/bin/gyrod \
  --data-dir $DATA_DIR \
  --p2p-bind-port 20010 \
  --rpc-bind-port 20011 \
  --config-file gyro.conf \
  --rpc-bind-ip 0.0.0.0 \
  --rpc-ssl disabled \
  --confirm-external-bind \
  --zmq-rpc-bind-port 20012 \
  --add-exclusive-node 127.0.0.1 \
  --allow-local-ip \
  --log-level 1 \
  --log-file=gyro.log