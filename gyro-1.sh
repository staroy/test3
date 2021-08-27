CURRENT_DIR=$PWD
PARENT_DIR="$(dirname "$PWD")"
OUT_DIR=$PARENT_DIR/out-release
DATA_DIR=$CURRENT_DIR/data1

LD_LIBRARY_PATH=$OUT_DIR/lib $OUT_DIR/bin/gyrod \
  --data-dir=$DATA_DIR \
  --config-file=$CURRENT_DIR/gyro.conf \
  --rpc-bind-ip 0.0.0.0 \
  --rpc-ssl disabled \
  --confirm-external-bind \
  --add-exclusive-node=127.0.0.1:20000 \
  --allow-local-ip \
  --log-level=1 \
  --log-file=gyro.log