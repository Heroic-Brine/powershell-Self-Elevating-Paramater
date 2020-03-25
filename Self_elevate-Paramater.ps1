Param (
#setting paramater to be requried so my script dosen't break.
 [parameter(Mandatory=$true)]
 [string]
    $PathToScript
 )
 #checks if the script is allready running as administrator 
If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
#Starts the specifed script as administartor promting the user to accept a uac dialog
Start-Process powershell.exe $PathToScript -Verb runAs
exit
}
#If the script is allready administrator there is no need to ask user again for administrator rights
Start-Process powershell.exe $PathToScript
exit