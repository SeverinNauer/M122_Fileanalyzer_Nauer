class Rule {
    [int]$MinSize
    [int]$MaxSize
    [string]$Destination
}

class Type {
    [string]$Type
    [System.Collections.Generic.List[Rule]]$Rules
}

class Folder {
    [string]$Name
    [string]$Path
    [System.Collections.Generic.List[Type]]$Types
}


class Config {
    [System.Collections.Generic.List[Type]]$GlobalTypes
    [System.Collections.Generic.List[Folder]]$Folders
}

function CreateConfig(){
    return [Config]::New()
}

Export-ModuleMember -Function CreateConfig