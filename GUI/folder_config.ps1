#Generated Form Function
function GenerateForm {
    ########################################################################
    # Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
    # Generated On: 19.04.2020 20:32
    # Generated By: severin.nauer
    ########################################################################
    
    #region Import the Assemblies
    [reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
    [reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
    #endregion
    
    #region Generated Form Objects
    $form1 = New-Object System.Windows.Forms.Form
    $button3 = New-Object System.Windows.Forms.Button
    $button2 = New-Object System.Windows.Forms.Button
    $button1 = New-Object System.Windows.Forms.Button
    $label1 = New-Object System.Windows.Forms.Label
    $dataGridView1 = New-Object System.Windows.Forms.DataGridView
    $InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
    #endregion Generated Form Objects
    
    #----------------------------------------------
    #Generated Event Script Blocks
    #----------------------------------------------
    #Provide Custom Code for events specified in PrimalForms.
    $handler_button3_Click = 
    {
        #TODO: Place custom script here
    
    }
    
    $handler_form1_Load = 
    {
        #TODO: Place custom script here
    
    }
    
    $handler_label1_Click = 
    {
        #TODO: Place custom script here
    
    }
    
    $handler_dataGridView1_CellContentClick = 
    {
        #TODO: Place custom script here
    
    }
    
    $handler_button2_Click = 
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
    $System_Drawing_Size.Height = 326
    $System_Drawing_Size.Width = 528
    $form1.ClientSize = $System_Drawing_Size
    $form1.DataBindings.DefaultDataSourceUpdateMode = 0
    $form1.Name = "form1"
    $form1.Text = "Config Editor"
    $form1.add_Load($handler_form1_Load)
    
    
    $button3.DataBindings.DefaultDataSourceUpdateMode = 0
    $button3.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 9.75, 0, 3, 1)
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 12
    $System_Drawing_Point.Y = 285
    $button3.Location = $System_Drawing_Point
    $button3.Name = "button3"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 75
    $button3.Size = $System_Drawing_Size
    $button3.TabIndex = 4
    $button3.Text = "Edit"
    $button3.UseVisualStyleBackColor = $True
    $button3.add_Click($handler_button3_Click)
    
    $form1.Controls.Add($button3)
    
    
    $button2.DataBindings.DefaultDataSourceUpdateMode = 0
    $button2.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 9.75, 0, 3, 1)
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 421
    $System_Drawing_Point.Y = 285
    $button2.Location = $System_Drawing_Point
    $button2.Name = "button2"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 94
    $button2.Size = $System_Drawing_Size
    $button2.TabIndex = 3
    $button2.Text = "Add folder"
    $button2.UseVisualStyleBackColor = $True
    $button2.add_Click($handler_button2_Click)
    
    $form1.Controls.Add($button2)
    
    
    $button1.DataBindings.DefaultDataSourceUpdateMode = 0
    $button1.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 9.75, 0, 3, 1)
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 421
    $System_Drawing_Point.Y = 12
    $button1.Location = $System_Drawing_Point
    $button1.Name = "button1"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 95
    $button1.Size = $System_Drawing_Size
    $button1.TabIndex = 2
    $button1.Text = "Global rules"
    $button1.UseVisualStyleBackColor = $True
    $button1.add_Click($handler_button1_Click)
    
    $form1.Controls.Add($button1)
    
    $label1.DataBindings.DefaultDataSourceUpdateMode = 0
    $label1.Font = New-Object System.Drawing.Font("Microsoft Sans Serif", 12, 0, 3, 1)
    
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 13
    $System_Drawing_Point.Y = 13
    $label1.Location = $System_Drawing_Point
    $label1.Name = "label1"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 142
    $label1.Size = $System_Drawing_Size
    $label1.TabIndex = 1
    $label1.Text = "Monitored folders"
    $label1.add_Click($handler_label1_Click)
    
    $form1.Controls.Add($label1)
    
    $dataGridView1.AllowUserToAddRows = $False
    $dataGridView1.AllowUserToOrderColumns = $True
    $dataGridView1.AllowUserToResizeRows = $False
    $System_Windows_Forms_DataGridViewTextBoxColumn_1 = New-Object System.Windows.Forms.DataGridViewTextBoxColumn
    $System_Windows_Forms_DataGridViewTextBoxColumn_1.HeaderText = "Name"
    $System_Windows_Forms_DataGridViewTextBoxColumn_1.Name = ""
    $System_Windows_Forms_DataGridViewTextBoxColumn_1.Width = 160
    
    $dataGridView1.Columns.Add($System_Windows_Forms_DataGridViewTextBoxColumn_1) | Out-Null
    $System_Windows_Forms_DataGridViewTextBoxColumn_2 = New-Object System.Windows.Forms.DataGridViewTextBoxColumn
    $System_Windows_Forms_DataGridViewTextBoxColumn_2.HeaderText = "Path"
    $System_Windows_Forms_DataGridViewTextBoxColumn_2.Name = ""
    $System_Windows_Forms_DataGridViewTextBoxColumn_2.Width = 300
    
    $dataGridView1.Columns.Add($System_Windows_Forms_DataGridViewTextBoxColumn_2) | Out-Null
    $dataGridView1.DataBindings.DefaultDataSourceUpdateMode = 0
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 12
    $System_Drawing_Point.Y = 59
    $dataGridView1.Location = $System_Drawing_Point
    $dataGridView1.Name = "dataGridView1"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 210
    $System_Drawing_Size.Width = 504
    $dataGridView1.Size = $System_Drawing_Size
    $dataGridView1.TabIndex = 0
    $dataGridView1.add_CellContentClick($handler_dataGridView1_CellContentClick)
    
    $form1.Controls.Add($dataGridView1)
    
    #endregion Generated Form Code
    
    #Save the initial state of the form
    $InitialFormWindowState = $form1.WindowState
    #Init the OnLoad event to correct the initial state of the form
    $form1.add_Load($OnLoadForm_StateCorrection)
    #Show the Form
    $form1.ShowDialog() | Out-Null
    
} #End Function
    
#Call the Function
GenerateForm
    