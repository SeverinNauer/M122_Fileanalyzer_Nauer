.\Utils\types.psm1
.\Utils\config.psm1

[string]$configPath = ".\config.json"

[Config]$config = ImportConfig $configPath

.\GUI\menu.ps1

GenerateMenu