function PickPath () {
    $FolderBrowser = New-Object System.Windows.Forms.FolderBrowserDialog 
    $FolderBrowser.rootfolder = "MyComputer"
    $FolderBrowser.ShowDialog()
    return $FolderBrowser.SelectedPath
}
