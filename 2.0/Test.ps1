#requires -module @{ModuleName="SxSTest"; ModuleVersion="2.0"}
Write-Verbose "TEST SCRIPT 2.0" -Verbose
((Get-SxSVersion -Verbose) -eq "2.0") -and ((Get-ModuleVersion -Verbose) -eq "2.0")