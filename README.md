https://github.com/Toni-d-e-v/-idena-win-node-updater/blob/V2/download.jpg

This script will help you to update your Idena node if you run it as a remote node (not Built-in) on Windows 7/8/10.

Why would you run your Idena node as a remote node?

If you have problems where your Built-in node is failing often, running it as a remote node has proven to be more stable.

You can run Idena node as remote node by downloading two scripts above (**node-updater.ps1**, **run.bat**) and placing them in location where the node file is: **%userprofile%\AppData\Roaming\Idena\node**

Steps to run your remote node:
1. Download 2 scripts and place them in folder as said above
1. Turn off built-in node from Idena app in Settings
1. Run **run.bat** file. This will run your node as remote node
1. From location **%userprofile%\AppData\Roaming\Idena\node\datadir** open **api.key** with notepad and copy it
1. In Idena app, turn on Connect to remote host, paste api key and Save

V1 Now you can turn off Idena app, and leave node to run in **run.bat** file. When new version of node is out, you need to to close **run.bat** and run **node-updater.ps1** by right click and **Run with PowerShell**. Script will automatically update your node file. After it's done, start node again by running **run.bat** file.

v2 do that thing automaticly just run it :)

DNA Donation address: **0x6357cdf056b0dca75a14094987fa7eabbd78be5f** Thanks for help Rioda
