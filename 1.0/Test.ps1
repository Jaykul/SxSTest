#requires -module @{ModuleName="SxSTest"; ModuleVersion="1.0"}
Write-Verbose "TEST SCRIPT 1.0" -Verbose
((Get-SxSVersion -Verbose) -eq "1.0") -and ((Get-ModuleVersion -Verbose) -eq "1.0")