#Generated Form Function
function GenerateMenu {
    ########################################################################
    # Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
    # Generated On: 19.04.2020 20:27
    # Generated By: severin.nauer
    ########################################################################
    
    #region Import the Assemblies
    [reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
    [reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
    #endregion
    
    #region Generated Form Objects
    $form1 = New-Object System.Windows.Forms.Form
    $configButton = New-Object System.Windows.Forms.Button
    $runButton = New-Object System.Windows.Forms.Button
    $label2 = New-Object System.Windows.Forms.Label
    $label1 = New-Object System.Windows.Forms.Label
    $InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
    #endregion Generated Form Objects
    
    #----------------------------------------------
    #Generated Event Script Blocks
    #----------------------------------------------
    #Provide Custom Code for events specified in PrimalForms.
    $handler_form1_Load = 
    {
        #TODO: Place custom script here
    
    }
    
    
    $handler_configButton_Click = 
    {
        #TODO: Place custom script here
        GenerateConfig
    }
    
    $handler_runButton_Click = 
    {
        #TODO: Place custom script here
    
    }
    
    $OnLoadForm_StateCorrection =
    { #Correct the initial state of the form to prevent the .Net maximized form issue
        $form1.WindowState = $InitialFormWindowState
    }
    
    #----------------------------------------------
    #region Generated Form Code
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 132
    $System_Drawing_Size.Width = 263
    $form1.ClientSize = $System_Drawing_Size
    $form1.DataBindings.DefaultDataSourceUpdateMode = 0
    $form1.Name = "form1"
    $form1.Text = "File Analyzer"
    $form1.add_Load($handler_form1_Load)
    
    
    $configButton.DataBindings.DefaultDataSourceUpdateMode = 0
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 176
    $System_Drawing_Point.Y = 73
    $configButton.Location = $System_Drawing_Point
    $configButton.Name = "configButton"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 75
    $configButton.Size = $System_Drawing_Size
    $configButton.TabIndex = 3
    $configButton.Text = "config"
    $configButton.UseVisualStyleBackColor = $True
    $configButton.add_Click($handler_configButton_Click)
    
    $form1.Controls.Add($configButton)
    
    
    $runButton.DataBindings.DefaultDataSourceUpdateMode = 0
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 26
    $System_Drawing_Point.Y = 73
    $runButton.Location = $System_Drawing_Point
    $runButton.Name = "runButton"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 75
    $runButton.Size = $System_Drawing_Size
    $runButton.TabIndex = 2
    $runButton.Text = "Stop"
    $runButton.UseVisualStyleBackColor = $True
    $runButton.add_Click($handler_runButton_Click)
    
    $form1.Controls.Add($runButton)
    
    $label2.DataBindings.DefaultDataSourceUpdateMode = 0
    $label2.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 11.25, 0, 3, 1)
    $label2.ForeColor = [System.Drawing.Color]::FromArgb(255, 0, 192, 0)
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 80
    $System_Drawing_Point.Y = 29
    $label2.Location = $System_Drawing_Point
    $label2.Name = "label2"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 100
    $label2.Size = $System_Drawing_Size
    $label2.TabIndex = 1
    $label2.Text = "running"
    $label2.add_Click($handler_label2_Click)
    
    $form1.Controls.Add($label2)
    
    $label1.DataBindings.DefaultDataSourceUpdateMode = 0
    $label1.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 11.25, 0, 3, 1)
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 26
    $System_Drawing_Point.Y = 29
    $label1.Location = $System_Drawing_Point
    $label1.Name = "label1"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 58
    $label1.Size = $System_Drawing_Size
    $label1.TabIndex = 0
    $label1.Text = "Status:"
    $label1.add_Click($handler_label1_Click)
    
    $form1.Controls.Add($label1)
    
    #endregion Generated Form Code
    
    #Save the initial state of the form
    $InitialFormWindowState = $form1.WindowState
    #Init the OnLoad event to correct the initial state of the form
    $form1.add_Load($OnLoadForm_StateCorrection)
    #Show the Form
    $form1.ShowDialog() | Out-Null
    
} #End Function
    
. .\GUI\folders_config.ps1
    