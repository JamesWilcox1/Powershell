#Sample Script from Microsoft training
#pass the resource group to the script 
# i.e. ./ConferenceDailyReset.ps1 learn-61bbc9ec-a887-48eb-b5ac-9a02c925d4b2

param([string]$resourceGroup)

$adminCredential = Get-Credential -Message "Enter a username and password for the VM administrator."

For ($i = 1; $i -le 3; $i++)
{
    $vmName = "ConferenceDemo" + $i
    Write-Host "Creating VM: " $vmName
    New-AzVm -ResourceGroupName $resourceGroup -Name $vmName -Credential $adminCredential -Image UbuntuLTS
}