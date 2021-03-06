<# Functions used in the service ps1
   --------------------------------
   Author: Severin Nauer           
#>

#apply rules of a folder: Moves items in the folder that are within the rules
function applyRules($folder){
    foreach ($type in $folder.types) {
        $path = [string]::Format("{0}\*{1}", $folder.path, $type.type)
        $items = Get-Item -Path $path 
        $filteredItems = $items | Where-Object { ($_.Length / 1MB -gt $type.rules.minsize) -and ($_.Length / 1MB -lt $type.rules.maxsize) }
        $filteredItems | Move-Item -Destination $type.rules.destination
    }
}

#Adds global rules to the folders that have not overwritten them
function applyGlobalRulesToFolder{
    param(
        $folder,
        $config
    )
    $types = [System.Collections.ArrayList]$folder.types
    $globalRules = [System.Collections.ArrayList]$config.$globalRules
    foreach ($globalRule in $globalRules) {
        if (($types | Where-Object { $_.type -match $globalRule.type }).Count -lt 1 ) {
            $types.Add($globalRule)
        }
    }
    $folder.types = $types.ToArray()
    return $folder
}

Export-ModuleMember -Function applyRules
Export-ModuleMember -Function applyGlobalRulesToFolder