# idena-win-node-update
This script will help you to update your Idena node if you run it as a remote node (not Built-in) on Windows 7/8/10.

Why would you run your Idena node as a remote node? If you have problems where your Built-in node is failing often, running it as a remote node has proven to be more stable.

You can run Idena node as remote node by downloading two scripts above (node-updater.ps1, run.bat) and placing them in location where the node file is: %userprofile%\AppData\Roaming\Idena\node

Steps to run your remote node:

Download 2 scripts and place them in folder as said above
Turn off built-in node from Idena app in Settings
Run "run.bat" file. This will run your node as remote node
From location %userprofile%\AppData\Roaming\Idena\node\datadir open "api.key" with notepad and copy it
In Idena app, turn on Connect to remote host, paste api key and Save
Now you can turn off Idena app, and leave node to run in "run.bat" file. When new version of node is out, you need to to close "run.bat" and run "node-updater.ps1" by right click and "Run with PowerShell". Script will automatically update your node file. After it's done, start node again by running "run.bat" or "run2.bat"  file.

DNA Donation address: 0x3158ef188df5bbb6e969e8e4208fb68014207441
# HOW TO SEE IF YOUR WINDOWS IS COMPATIBLE
Where is your node you need to have run.bat or start.bat
In your .bat file there needs to be this
Chose one to run your Node

# RUN               
               @echo off
               :restart
               ls
               idena-go --profile=lowpower --apikey=YOURAPIKEY --datadir node --rpcaddr localhost --rpcport YOURRPCPORT
               goto restart
               
# RUN1               
               
               @echo off
               idena-go.exe
               timeout /t 5
               goto start

                                   



# HOW TO USE IT
             1.Download Script NODE-UPDATER.ps1
             2.Put script in folder where is idena-go.exe
             3.Run it
             4.ENJOY
# DNA DONATION addr: 0x3158ef188df5bbb6e969e8e4208fb68014207441
