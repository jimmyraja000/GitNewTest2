Set-ExecutionPolicy RemoteSigned
import-module -name WebAdministration
Get-Module WebAdministration

$DEV_APP_POOL_NAME="DevAPP_POOL_NAME"

if(Test-Path IIS:\AppPools\$AppPoolName)
{
"AppPool is already there"
return $true;
}
else
{
"AppPool is not present"
"Creating new AppPool"
# Import-Module WebAdministration
New-WebAppPool "$DEV_APP_POOL_NAME" -Force
return $false;
}
