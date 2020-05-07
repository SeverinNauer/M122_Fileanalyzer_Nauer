<# Entry point of the application
   Generates the UI
   --------------------------------
   Author: Severin Nauer           
#>

#Defining Global Variables
$global:configPath = "{0}.\config.json" -f $PSScriptRoot
$global:servicePath = [string]::Format("{0}\service.ps1", $PSScriptRoot)

$global:running = $false

Import-Module ".\GUI\menu.psm1" -Force
Import-Module ".\Utils\config.psm1" -Force

GenerateMenu