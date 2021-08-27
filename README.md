# test3
Test of 3 nodes in local

generate config: ./generate-genesis-tx.sh gyro.conf<br/>
start nodes: ./gyro-1.sh, ./gyro-2.sh, ./gyro-3.sh<br/>
start wallets: ./gyro-wallet-1.sh, ./gyro-wallet-2.sh, ./gyro-wallet-3.sh
<br/><br/>
in wallet-1:<br/>
start_spinning<br/>
after 60 height:<br/>
refresh<br/>address<br/>spinner_lock \<address\> 5<br/>start_spinning<br/>
after 100 height:<br/>refresh<br/>balance detail<br/>start_spinning \<txid\><br/>
