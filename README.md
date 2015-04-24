# SxSTest
An example of side-by-side PowerShell modules, for test purposes

Currently there seems to be a bug in dependencies which gets weird.

```
[368]: .\TestAll.ps1
WARNING: Modifying PSModulePath for test
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
True
VERBOSE: Invoke-Test 1.0
VERBOSE: TEST SCRIPT 1.0
VERBOSE: Get-SxSVersion 1.0
VERBOSE: Get-ModuleVersion 1.0
VERBOSE: Get-ModuleVersion 1.0
True
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
True
VERBOSE: Invoke-Test 1.0
VERBOSE: TEST SCRIPT 1.0
VERBOSE: Get-SxSVersion 2.0
VERBOSE: Get-ModuleVersion 2.0
False
WARNING: Restoring PSModulePath
```
