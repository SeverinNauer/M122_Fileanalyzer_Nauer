. .\GUI\menu.ps1

$global:configPath = ".\config.json"
$global:servicePath = [string]::Format("{0}\service.ps1", $PSScriptRoot)

$global:running = $false

GenerateMenu