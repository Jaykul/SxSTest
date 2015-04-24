function Get-SxSVersion {
    [CmdletBinding()]
    param()
    Write-Verbose "Get-SxSVersion 1.0"
    Get-ModuleVersion

}


function Get-ModuleVersion {
    [CmdletBinding()]
    param()
    Write-Verbose "Get-ModuleVersion 1.0"
    $MyInvocation.MyCommand.Module.Version
}

function Invoke-Test {
    [CmdletBinding()]
    param()    
    Write-Verbose "Invoke-Test 1.0"
    & $Pwd\Test.ps1
}