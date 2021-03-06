﻿param($Task = 'Default')
if ($env:APPVEYOR) {
    $BS = "AppVeyor"
}
elseif ($env:TRAVIS) {
    $BS = "Travis CI"
}
else {
    $BS = "Unknown"
}

Write-Host -ForegroundColor Green "
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Current directory: $($pwd.Path)
Build system: $BS

++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"

if ($env:TRAVIS) {
    # Install InvokeBuild
    Install-Module InvokeBuild, Pester -Scope CurrentUser -Force -AllowClobber

    # Build the code and perform tests
    Import-module InvokeBuild

    Set-Location $PSScriptRoot

    Invoke-Build -Safe -Result Result -File .\travis.build.ps1
    if ($Result.Error) {
        exit 1
    }
    else {
        exit 0
    }

}
else {
    # Grab nuget bits, install modules, set build variables, start build.
    Get-PackageProvider -Name NuGet -ForceBootstrap | Out-Null

    Install-Module Psake, PSDeploy, Pester, BuildHelpers, Coveralls -Force -Scope CurrentUser -AllowClobber
    Import-Module Psake, BuildHelpers, Coveralls

    Set-BuildEnvironment

    Invoke-psake .\ci\psake.ps1 -taskList $Task -nologo
    exit ( [int]( -not $psake.build_success ) )
}

#Get-Item Env:BH* | Remove-Item