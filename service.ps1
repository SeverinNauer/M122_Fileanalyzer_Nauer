
function startService {
    $action = New-ScheduledTaskAction -Execute "Powershell"  -Argument "-WindowStyle Hidden `"$PSScriptRoot\service.ps1"
    $trigger = New-ScheduledTaskTrigger -Once -RepetitionInterval (New-TimeSpan -Minutes 1) -At (Get-Date)
    Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "fileAnalyzer"
}

function run{
    $global:handlers = @()
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


function registerFileWatcher($folder) {
    if(Test-Path -Path $folder.path){
        $watcher = New-Object System.IO.FileSystemWatcher
        $watcher.Path = $folder.path
        $watcher.EnableRaisingEvents = $true
        $action = {
            Write-Host "Action"
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
        $global:handlers += Register-ObjectEvent -InputObject $watcher -EventName Created -Action $action
        Write-Host "Registered"
    }
}

run