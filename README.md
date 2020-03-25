# powershell-Self-Elevating-Paramater
 Self elevating powershell now made to be used with paramaters
checks if it has been started with administrative priveleges if it has then it does nothing.
if it has not it elevates the program set in first variable.
1 variable is the absolute path to a script (relative should also work) surgest to run this script in another script like this:

If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
{
& path-to-script\Self_Elevate-Paramater.ps1 "$PSCommandPath"
exit
}
#your script here

You cannot just use & self-elevate-parameter.ps1 as that would result in an infinite loop
