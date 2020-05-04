[reflection.assembly]::loadwithpartialname("System.Collections.Generic")

function ImportConfig([string]$configPath) {
    return Get-Content -Path $configPath | Out-String | ConvertFrom-Json
}

Export-ModuleMember -Function ImportConfig