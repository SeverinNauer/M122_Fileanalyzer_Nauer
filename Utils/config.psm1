Using module  .\Utils\types.psm1

function ImportConfig([string]$configPath) {
    $config = [Config]::New()
    $config.types = [System.Collections.Generic.List]::New()
    return $config 
}

Export-ModuleMember -Function ImportConfig