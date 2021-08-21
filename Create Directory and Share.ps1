#Create the Folder
New-Item -Path c:\Labs -Type Directory | Out-Null

#Create the Share
$myshare = New-SmbShare -Name Labs -Path C:\Labs\ `
-Description "MoL Lab Share" -ChangeAccess Everyone `
-FullAccess Administrators -CachingMode Documents

#Get the share permissions

$myshare | Get-SmbShareAccess