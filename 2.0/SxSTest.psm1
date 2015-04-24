if($Host.UI.RawUI.BackgroundColor -is [ConsoleColor]) {
    $Background = $Host.UI.RawUI.BackgroundColor
} else {
    $Background = "Black"
}

function Get-SxSVersion {
    [CmdletBinding()]
    param()
    Write-Verbose "Get-SxSVersion 2.0"
    Get-ModuleVersion

}

function Get-ModuleVersion {
    [CmdletBinding()]
    param()
    Write-Verbose "Get-ModuleVersion 2.0"
    $MyInvocation.MyCommand.Module.Version
}

function Invoke-Test {
    [CmdletBinding()]
    param()
    Write-Verbose "Invoke-Test 2.0"
    & $Pwd\Test.ps1 | % { 
        if($_) { Write-Host "   PASS   " -Background Green -Foreground $Background }
        else { Write-Host "   FAIL   " -Background Red -Foreground $Background }
    }
}