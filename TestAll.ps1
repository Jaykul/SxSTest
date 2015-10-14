$TestRoot = Join-Path (Split-Path $PSScriptRoot) "SxSTest"

Push-Location $Env:SystemRoot
if($PSScriptRoot -ne $TestRoot) {
    Rename-Item $PSScriptRoot $TestRoot
}

Push-Location $TestRoot

if($Env:PSModulePath -notmatch [regex]::escape($TestRoot)) {
    Write-Warning "Modifying PSModulePath for test"
    $Script:PSModulePathCopy = $Env:PSModulePath
    $Env:PSModulePath = "$(Split-Path $TestRoot);$Env:PSModulePath"
}
Write-Host "PSModulePath:`n$(($Env:PSModulePath -split ";" | sort) -join "`n")"

Write-Host "=== CLEAN RELOAD SxSTest v1.0 ===" -Fore Magenta
Remove-Module SxSTest -ErrorAction Ignore
Import-Module SxSTest -RequiredVersion 1.0

Write-Host "=== TEST SxSTest v2.0 ===" -Fore Magenta
Set-Location $TestRoot\2.0
Invoke-Test -Verbose

# Unload the module and re-load it
Write-Host "=== CLEAN RELOAD SxSTest v2.0 ===" -Fore Magenta
Remove-Module SxSTest
Import-Module SxSTest -RequiredVersion 1.0

Write-Host "=== TEST SxSTest v1.0 ===" -Fore Magenta
Set-Location $TestRoot\1.0
Invoke-Test -Verbose

# DO NOT Unload the module and re-load it
Write-Host "=== TEST SxSTest v2.0 ===" -Fore Magenta
Set-Location $TestRoot\2.0
Invoke-Test -Verbose

Write-Host "=== TEST SxSTest v1.0 ===" -Fore Magenta
Set-Location $TestRoot\1.0
Invoke-Test -Verbose


if($PSModulePathCopy) {
    Write-Warning "Restoring PSModulePath"
    $Env:PSModulePath = $Script:PSModulePathCopy
}

Pop-Location

if($PSScriptRoot -ne $TestRoot) {
    Rename-Item $TestRoot $PSScriptRoot
}

Pop-Location
