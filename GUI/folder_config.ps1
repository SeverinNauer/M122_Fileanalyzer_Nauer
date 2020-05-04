#Generated Form Function
function GenerateFolderConfig {

    param (
        [int] $index
    )
    ########################################################################
    # Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
    # Generated On: 02.05.2020 16:37
    # Generated By: severin.nauer
    ########################################################################
    
    #region Import the Assemblies
    [reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
    [reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
    #endregion
    
    #region Generated Form Objects
    $form1 = New-Object System.Windows.Forms.Form
    $button2 = New-Object System.Windows.Forms.Button
    $button1 = New-Object System.Windows.Forms.Button
    $label2 = New-Object System.Windows.Forms.Label
    $dataGridView1 = New-Object System.Windows.Forms.DataGridView
    $label1 = New-Object System.Windows.Forms.Label
    $InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
    #endregion Generated Form Objects

    #region init
    

    $fillGrid = { 
        Import-Module ".\Utils\config.psm1" -Verbose -Force
        $jsonConfig = (ImportConfig $configPath)
        $selectedFolder = $jsonConfig.folders[$index]
        $dataGridView1.Rows.Clear()
        foreach ($type in $selectedFolder.types) {
            $dataGridView1.Rows.Add($type.type, $type.rules.destination)
        }
    }

    #endregion
    
    #----------------------------------------------
    #Generated Event Script Blocks
    #----------------------------------------------
    #Provide Custom Code for events specified in PrimalForms.
    $button2_OnClick = 
    {
        #TODO: Place custom script here
    
    }
    
    $handler_label2_Click = 
    {
        #TODO: Place custom script here
    
    }
    
    $handler_label1_Click = 
    {
        #TODO: Place custom script here
    
    }
    
    $handler_button1_Click = 
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
    $System_Drawing_Size.Height = 394
    $System_Drawing_Size.Width = 478
    $form1.ClientSize = $System_Drawing_Size
    $form1.DataBindings.DefaultDataSourceUpdateMode = 0
    $form1.Name = "form1"
    $form1.Text = "Primal Form"
    
    
    $button2.DataBindings.DefaultDataSourceUpdateMode = 0
    $button2.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 9.75, 0, 3, 1)
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 363
    $System_Drawing_Point.Y = 355
    $button2.Location = $System_Drawing_Point
    $button2.Name = "button2"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 93
    $button2.Size = $System_Drawing_Size
    $button2.TabIndex = 4
    $button2.Text = "Add file type"
    $button2.UseVisualStyleBackColor = $True
    $button2.add_Click($button2_OnClick)
    
    $form1.Controls.Add($button2)
    
    
    $button1.DataBindings.DefaultDataSourceUpdateMode = 0
    $button1.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 9.75, 0, 3, 1)
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 362
    $System_Drawing_Point.Y = 9
    $button1.Location = $System_Drawing_Point
    $button1.Name = "button1"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 93
    $button1.Size = $System_Drawing_Size
    $button1.TabIndex = 3
    $button1.Text = "Folder rules"
    $button1.UseVisualStyleBackColor = $True
    $button1.add_Click($handler_button1_Click)
    
    $form1.Controls.Add($button1)
    
    $label2.DataBindings.DefaultDataSourceUpdateMode = 0
    $label2.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 9.75, 1, 3, 1)
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 12
    $System_Drawing_Point.Y = 45
    $label2.Location = $System_Drawing_Point
    $label2.Name = "label2"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 100
    $label2.Size = $System_Drawing_Size
    $label2.TabIndex = 2
    $label2.Text = "File types"
    $label2.add_Click($handler_label2_Click)
    
    $form1.Controls.Add($label2)
    
    $dataGridView1.AllowUserToAddRows = $False
    $dataGridView1.ReadOnly = $True
    $System_Windows_Forms_DataGridViewTextBoxColumn_1 = New-Object System.Windows.Forms.DataGridViewTextBoxColumn
    $System_Windows_Forms_DataGridViewTextBoxColumn_1.HeaderText = "File type"
    $System_Windows_Forms_DataGridViewTextBoxColumn_1.Name = ""
    $System_Windows_Forms_DataGridViewTextBoxColumn_1.Width = 100
    
    $dataGridView1.Columns.Add($System_Windows_Forms_DataGridViewTextBoxColumn_1) | Out-Null
    $System_Windows_Forms_DataGridViewTextBoxColumn_2 = New-Object System.Windows.Forms.DataGridViewTextBoxColumn
    $System_Windows_Forms_DataGridViewTextBoxColumn_2.HeaderText = "Folder path"
    $System_Windows_Forms_DataGridViewTextBoxColumn_2.Name = ""
    $System_Windows_Forms_DataGridViewTextBoxColumn_2.Width = 300
    
    $dataGridView1.Columns.Add($System_Windows_Forms_DataGridViewTextBoxColumn_2) | Out-Null
    $dataGridView1.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 12
    $System_Drawing_Point.Y = 71
    $dataGridView1.Location = $System_Drawing_Point
    $dataGridView1.Name = "dataGridView1"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 269
    $System_Drawing_Size.Width = 444
    $dataGridView1.Size = $System_Drawing_Size
    $dataGridView1.TabIndex = 1
    
    . $fillGrid
    $form1.Controls.Add($dataGridView1)
    
    $label1.DataBindings.DefaultDataSourceUpdateMode = 0
    $label1.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 12, 0, 3, 1)
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 12
    $System_Drawing_Point.Y = 9
    $label1.Location = $System_Drawing_Point
    $label1.Name = "label1"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 146
    $label1.Size = $System_Drawing_Size
    $label1.TabIndex = 0
    $label1.Text = "Folder: " + $selectedFolder.name
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
    
    