
#Creating the GUI
Add-Type -AssemblyName Microsoft.VisualBasic
$number = [Microsoft.VisualBasic.Interaction]::InputBox('Enter Search String eg. Part of Foldername', 'Titel -OpenTheFolder', "$env:RMNumber")
#Check if Searchfield is empty
IF([string]::IsNullOrEmpty($number)) {            
    Write-Host "Your string is EMPTY or NULL"
    Exit           
} else {          
                    
$number
$pfad = Get-ChildItem "FOLDERPATH"  | Where-Object {$_.PSIsContainer -eq $true -and $_.Name -match "$number"}
ii $pfad.PSPath

}

