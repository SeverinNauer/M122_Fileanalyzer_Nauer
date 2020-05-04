[reflection.assembly]::loadwithpartialname("System.Collections.Generic")

function ImportConfig([string]$configPath) {
    return Get-Content -Path $configPath | Out-String | ConvertFrom-Json
}

function AddFolder($folder) {
    $config = ImportConfig $global:configPath
    $config.folders += $folder
    $config | ConvertTo-Json -Depth 4 | Set-Content -Path $global:configPath
}
function EditFolder($folder, $index) {
    $config = ImportConfig $global:configPath
    $folder.types = $config.folders[$index].types
    $config.folders[$index] = $folder
    $config | ConvertTo-Json -Depth 10 | Set-Content -Path $global:configPath
}
function DeleteFolder($index) {
    $config = ImportConfig $global:configPath
    $folders = [System.Collections.ArrayList] $config.folders
    $folders.RemoveAt($index)
    $config.folders = $folders.ToArray()
    $config | ConvertTo-Json -Depth 4 | Set-Content -Path $global:configPath
}

Export-ModuleMember -Function ImportConfig
Export-ModuleMember -Function AddFolder
Export-ModuleMember -Function EditFolder
Export-ModuleMember -Function DeleteFolder