$DEV_WEBSITE_NAME="DevGit_New_Test2"
$dir = "C:\inetpub\wwwroot\$DEV_WEBSITE_NAME"
if(!(Test-Path -Path $dir )){
    New-Item -ItemType directory -Path $dir
    Write-Host "New folder created"
}
else
{
  Write-Host "Folder already exists"
}
