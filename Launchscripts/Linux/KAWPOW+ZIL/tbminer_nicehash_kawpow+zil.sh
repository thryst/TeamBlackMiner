#!/bin/bash

RESTART="TRUE"
ZIL_WALLET=zil1xrv7nsssq3t08mjjgh26ux58pml22afdpx2sf6
BTC_WALLET=R9RaKw5HNuwtbXYRXWrpUugAE8WhtMhfUk
WORKER_NAME="fr"

cleanup ()
{
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
	./TBMiner --algo etc+rvn --hostname eu.crazypool.org --port 5005 --wallet $ZIL_WALLET --rvn-hostname kawpow.auto.nicehash.com --rvn-port 9200 --rvn-wallet $BTC_WALLET --worker-name $WORKER_NAME
    if [ $RESTART == "FALSE" ]
    then
        exit 0
    fi
done
