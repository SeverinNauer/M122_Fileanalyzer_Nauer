<# Module with pathpicker function
   --------------------------------
   Author: Severin Nauer           
#>

function PickPath () {
    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog 
    $FolderBrowser.rootfolder = "MyComputer"
    $FolderBrowser.ShowDialog()
    return $FolderBrowser.SelectedPath
}

Export-Module -function PickPath