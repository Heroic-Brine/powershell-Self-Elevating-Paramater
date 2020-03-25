# powershell-Self-Elevating-Paramater
 Self elevating powershell now made to be used with paramaters
checks if it has been started with administrative priveleges if it has then it does nothing.
if it has not it elevates the program set in first variable.
1 variable is the absolute path to a script (relative should also work) surgest to run this script in another script like this:

& Path-To-This-Script\Powershell-Self-Elevating-Paramater $PSCommandPath
