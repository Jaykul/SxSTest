# SxSTest
An example of side-by-side PowerShell modules, for test purposes

When originally published, there was a bug in dependencies...

_The current version of PS5 fixes this so that all tests PASS_

```
C:\PS> .\TestAll.ps1

WARNING: Modifying PSModulePath for test
=== CLEAN RELOAD SxSTest v1.0 ===
=== TEST SxSTest v2.0 ===
VERBOSE: Invoke-Test 1.0
VERBOSE: Loading module from path 'C:\Users\Joel\Projects\Modules\SxSTest\2.0\SxSTest.psm1'.
VERBOSE: Loading module from path 'C:\Users\Joel\Projects\Modules\SxSTest\1.0\SxSTest.psm1'.
VERBOSE: Loading module from path 'C:\Users\Joel\Projects\Modules\SxSTest\2.0\SxSTest.psd1'.
VERBOSE: Loading module from path 'C:\Users\Joel\Projects\Modules\SxSTest\2.0\SxSTest.psm1'.
VERBOSE: Exporting function 'Get-SxSVersion'.
VERBOSE: Exporting function 'Get-ModuleVersion'.
VERBOSE: Exporting function 'Invoke-Test'.
VERBOSE: Importing function 'Get-ModuleVersion'.
VERBOSE: Importing function 'Get-SxSVersion'.
VERBOSE: Importing function 'Invoke-Test'.
VERBOSE: TEST SCRIPT 2.0
VERBOSE: Get-SxSVersion 2.0
VERBOSE: Get-ModuleVersion 2.0
VERBOSE: Get-ModuleVersion 2.0
   TRUE
=== CLEAN RELOAD SxSTest v2.0 ===
=== TEST SxSTest v1.0 ===
VERBOSE: Invoke-Test 1.0
VERBOSE: TEST SCRIPT 1.0
VERBOSE: Get-SxSVersion 1.0
VERBOSE: Get-ModuleVersion 1.0
VERBOSE: Get-ModuleVersion 1.0
   TRUE
=== TEST SxSTest v2.0 ===
VERBOSE: Invoke-Test 1.0
VERBOSE: Loading module from path 'C:\Users\Joel\Projects\Modules\SxSTest\2.0\SxSTest.psm1'.
VERBOSE: Loading module from path 'C:\Users\Joel\Projects\Modules\SxSTest\1.0\SxSTest.psm1'.
VERBOSE: Loading module from path 'C:\Users\Joel\Projects\Modules\SxSTest\2.0\SxSTest.psd1'.
VERBOSE: Loading module from path 'C:\Users\Joel\Projects\Modules\SxSTest\2.0\SxSTest.psm1'.
VERBOSE: Exporting function 'Get-SxSVersion'.
VERBOSE: Exporting function 'Get-ModuleVersion'.
VERBOSE: Exporting function 'Invoke-Test'.
VERBOSE: Importing function 'Get-ModuleVersion'.
VERBOSE: Importing function 'Get-SxSVersion'.
VERBOSE: Importing function 'Invoke-Test'.
VERBOSE: TEST SCRIPT 2.0
VERBOSE: Get-SxSVersion 2.0
VERBOSE: Get-ModuleVersion 2.0
VERBOSE: Get-ModuleVersion 2.0
   TRUE
=== TEST SxSTest v1.0 ===
VERBOSE: Invoke-Test 1.0
VERBOSE: TEST SCRIPT 1.0
VERBOSE: Get-SxSVersion 2.0
VERBOSE: Get-ModuleVersion 2.0
   FALSE
WARNING: Restoring PSModulePath


C:\PS> Get-Module SxSTest | Format-Table Name, Version

Name                                            Version
----                                            -------
SxSTest                                         1.0


C:\PS> &(Get-Module SxSTest){ Get-Module SxSTest | Format-Table Name, Version}

Name                                            Version
----                                            -------
SxSTest                                         2.0
SxSTest                                         1.0

```
