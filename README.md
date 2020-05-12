# -idena-win-node-update
This is node updater for win7/8/10
# HOW TO SEE IF MY WINDOWS IS COMPATIBLE
Where is your node you need to have run.bat or start.bat
In your .bat file there needs to be this
@echo off
:restart
cls
idena-go --profile=lowpower --apikey=YOURAPIKEY --datadir node --rpcaddr localhost --rpcport YOURRPCPORT
goto restart






# HOW TO USE IT
1.Download Script
2.Put script in folder where is idena-go.exe
3.Run it
4.ENJOY
