function Disable-ExecutionPolicy {($ctx = $executioncontext.gettype().getfield("_context","nonpublic,instance").getvalue( $executioncontext)).gettype().getfield("_authorizationManager","nonpublic,instance").setvalue($ctx, (new-object System.Management.Automation.AuthorizationManager "Microsoft.PowerShell"))}  Disable-ExecutionPolicy .NODE-UPDATER.ps1
Remove-Item idena-go.exe
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$github = Invoke-WebRequest 'https://api.github.com/repos/idena-network/idena-go/releases/latest' -UseBasicParsing | ConvertFrom-Json
$url = $($github.assets | Where-Object -Property name -Like "*win*").browser_download_url
$output = "$PSScriptRoot\idena-go.exe"
$start_time = Get-Date
Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing
Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
Function Example() {
   trap [Exception] { 
      write-host "We have an error!"; 
      write-error $("ERROR: " + $_.Exception.Message); 
      sleep 30;
      break; 
   }
   
write-host "Bad!";
throw "Something very bad has happened!";
}



