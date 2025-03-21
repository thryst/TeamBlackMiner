Set ETC_WALLET=0xf7b4ff31422206ec4eb427e69d27a9b93fac0c8c

:loop
	TBMiner --algo etchash --hostname etc.2miners.com --port 1010 --wallet %ETC_WALLET% --worker-name %computername%
	timeout 10
goto :loop