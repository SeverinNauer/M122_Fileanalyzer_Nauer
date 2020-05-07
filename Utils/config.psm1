<# Functions that work with the config
   --------------------------------
   Author: Severin Nauer           
#>

[reflection.assembly]::loadwithpartialname("System.Collections.Generic")

#Imports the config from the path and fills its value to an object
function ImportConfig([string]$configPath) {
    return Get-Content -Path $configPath | Out-String | ConvertFrom-Json
}

#saves a config object into the config json file
function SaveConfig($config){
    $config | ConvertTo-Json -Depth | Set-Content -Path $global:configPath
}

#Adds a folder to the config json
function AddFolder($folder) {
    $config = ImportConfig $global:configPath
    $config.folders += $folder
    SaveConfig $config
}

#Edits an existing folder
function EditFolder($folder, $index, $withTypes = $false) {
    $config = ImportConfig $global:configPath
    if(-not $withTypes){
        $folder.types = $config.folders[$index].types
    }
    $config.folders[$index] = $folder
    SaveConfig $config
}
#Deletes the folder of a sepecific index in json
function DeleteFolder($index) {
    $config = ImportConfig $global:configPath
    $folders = [System.Collections.ArrayList] $config.folders
    $folders.RemoveAt($index)
    $config.folders = $folders.ToArray()
    SaveConfig $config
}

#Adds a global rule to the config
function AddGlobalRule($rule) {
    $config = ImportConfig $global:configPath
    $config.globalTypes += $rule
    SaveConfig $config
}

#Edits a global rule in config
function EditGlobalRule($rule, $index) {
    $config = ImportConfig $global:configPath
    $config.globalTypes[$index] = $rule
    SaveConfig $config
}

#Deletes a global rule with index
function DeleteGlobalRule($index) {
    $config = ImportConfig $global:configPath
    $rules = [System.Collections.ArrayList] $config.globalTypes
    $rules.RemoveAt($index)
    $config.globalTypes = $rules.ToArray()
    SaveConfig $config
}

#Sets the Id of the last service-process
function SetLastId($lastId){
    $config = ImportConfig $global:configPath
    $config.lastId = $lastId
    SaveConfig $config
}

#Exports

Export-ModuleMember -Function ImportConfig
Export-ModuleMember -Function AddFolder
Export-ModuleMember -Function EditFolder
Export-ModuleMember -Function DeleteFolder
Export-ModuleMember -Function AddGlobalRule
Export-ModuleMember -Function EditGlobalRule
Export-ModuleMember -Function DeleteGlobalRule
Export-ModuleMember -Function SetLastId