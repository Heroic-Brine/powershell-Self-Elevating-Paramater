#find ud af om man er administrator lige nu
Param (
 [parameter(Mandatory=$true)]
 [string]
    $PathToScript
 )
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
#starer dette script som administrator, kan modificeres til at køre et andet script som administartor
Start-Process powershell.exe $PathToScript -Verb runAs
exit
}