Push-Location $PSScriptRoot

if( $Env:PSModulePath -notmatch [regex]::escape($PSScriptRoot)) {
    Write-Warning "Modifying PSModulePath for test"
    $Script:PSModulePathCopy = $Env:PSModulePath
    $Env:PSModulePath = "$PSScriptRoot;$Env:PSModulePath"
}
Remove-Module SxSTest
Import-Module SxSTest -RequiredVersion 1.0

Set-Location $PSScriptRoot\2.0
Invoke-Test -Verbose

# Unload the module and re-load it
Remove-Module SxSTest
Import-Module SxSTest -RequiredVersion 1.0

Set-Location $PSScriptRoot\1.0
Invoke-Test -Verbose


# DO NOT Unload the module and re-load it
Set-Location $PSScriptRoot\2.0
Invoke-Test -Verbose

Set-Location $PSScriptRoot\1.0
Invoke-Test -Verbose

if($PSModulePathCopy) {
    Write-Warning "Restoring PSModulePath"
    $Env:PSModulePath = $Script:PSModulePathCopy
}

Pop-Location
