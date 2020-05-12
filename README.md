# -idena-win-node-update 
DNA DONATION addr: 0x3158ef188df5bbb6e969e8e4208fb68014207441
This is node updater for win7/8/10
Under win/10 u need to install POWERSHELL
# HOW TO SEE IF YOUR WINDOWS IS COMPATIBLE
Where is your node you need to have run.bat or start.bat
In your .bat file there needs to be this


                @echo off
                :restart
                ls
                idena-go --profile=lowpower --apikey=YOURAPIKEY --datadir node --rpcaddr localhost --rpcport YOURRPCPORT
                goto restart





# HOW TO USE IT
             1.Download Script NODE-UPDATER.ps1
             2.Put script in folder where is idena-go.exe
             3.Run it
             4.ENJOY
