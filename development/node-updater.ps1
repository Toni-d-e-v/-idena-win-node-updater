<#
   Need to add github idena api to check fro new version
#>
echo "Idena node updater by Toni.Dev"
function get-fileversion {
  param([System.IO.FileInfo] $fileItem)
  $verInfo = $fileItem.VersionInfo
  "{0}.{1}.{2}" -f
    $verInfo.FileMajorPart,
    $verInfo.FileMinorPart,
    $verInfo.FileBuildPart
}

While($true){
	
	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
	$ideapi = Invoke-RestMethod -Uri 'https://api.github.com/repos/idena-network/idena-go/releases/latest'
	$idenapinow = & $env:USERPROFILE\AppData\Roaming\Idena\node\idena-go.exe -v
	$idenanoderes = $ideapi.tag_name
	$randomtime = 1 | % {Get-Random -Minimum 550 -Maximum 670 }

	$idenalastnode = $idenanoderes.Trim("v"," ")
	$idenalastclient = $idenaclientres.Trim("v"," ")
	$idenanownode = $idenapinow.replace("idena-go.exe version ","")
	$idenanowclient = get-fileversion $ideacpinow

	if(-NOT ($idenanownode -eq $idenalastnode)){
		echo 'Node Version ---->'
		$idenalastnode
		echo 'Please wait'
		Stop-Process -Name "Idena"
		cd $env:USERPROFILE\AppData\Roaming\Idena\node
		rm .\idena-go.exe
      rm .\idena-node.exe
		[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
		Invoke-WebRequest -OutFile idena-go.exe https://github.com/idena-network/idena-go/releases/download/$idenanoderes/idena-node-win-$idenalastnode.exe
		echo 'Running'
		cd $env:USERPROFILE
		start $env:USERPROFILE\AppData\Local\Programs\idena-desktop\Idena.exe
		echo 'Node updated to version ---->'
      $idenalastnode
		echo 'Version above is latest node'
      echo 'Thanks fro useing this script'
	}else{
		echo 'You are on latest version, rechecking every ± 10 Minutes'
		Start-Sleep -s $randomtime
	} 
}
