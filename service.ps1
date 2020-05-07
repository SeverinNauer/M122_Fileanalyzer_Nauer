<# The Service that applies de defined rules
   Runs in Background and registeres FileSystemWatchers
   --------------------------------
   Author: Severin Nauer           
#>

#the main function of the service
#Applies the rules to the folders when started and registeres the FileSystemWatchers for each Folder in the config
function run{
    $configPath = [string]::Format("{0}\config.json",$PSScriptRoot)
    $modulePath = [string]::Format("{0}\Utils\config.psm1",$PSScriptRoot)
    $functionsPath = [string]::Format("{0}\Utils\serviceFunctions.psm1",$PSScriptRoot)
    Import-Module $modulePath -Verbose -Force
    Import-Module $functionsPath -Verbose -Force
    $jsonConfig = (ImportConfig $configPath)
    foreach ($folder in $jsonConfig.folders) {
        $folder = applyGlobalRulesToFolder $folder -config $jsonConfig
        applyRules $folder
        registerFileWatcher $folder
    }
    while($true){
        Start-Sleep -s 1
        Write-Host "." -NoNewLine
    }
}

#Function to register the filesystemwatchers
function registerFileWatcher($folder) {
    if(Test-Path -Path $folder.path){
        $watcher = New-Object System.IO.FileSystemWatcher
        $watcher.Path = $folder.path
        $watcher.EnableRaisingEvents = $true
        $action = {
            $configPath = [string]::Format("{0}\config.json",$PSScriptRoot)
            $modulePath = [string]::Format("{0}\Utils\config.psm1",$PSScriptRoot)
            $functionsPath = [string]::Format("{0}\Utils\serviceFunctions.psm1",$PSScriptRoot)
            Import-Module $modulePath -Verbose -Force
            Import-Module $functionsPath -Verbose -Force
            $jsonConfig = (ImportConfig $configPath)
            foreach($folder in $jsonConfig.folders){
                $folder = applyGlobalRulesToFolder $folder -config $jsonConfig
                applyRules $folder
            }
        } 
        Register-ObjectEvent -InputObject $watcher -EventName Created -Action $action
    }
}

run