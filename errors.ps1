$wshell = New-Object -ComObject Wscript.Shell
function Set-Error {
    $inputErrorNumber = Read-Host "Enter the error number (1-50)";
    if ($inputErrorNumber -lt 1 -or $inputErrorNumber -gt 50) {
        Write-Host "Invalid input. Please enter a number between 1 and 50."
        return
    } else {
        for ($i = 0; $i -lt $inputErrorNumber; $i++) {
            Start-Job -ScriptBlock {
                $wshell = New-Object -ComObject WScript.Shell
                # For eductaional purposes only
                $wshell.Popup("Hacked! $i", 0, "You have been hacked!", 0x10)
            }
        }
    }
}

Set-Error