# Tests "Default", "Single", "Double", "Rounded", "Minimal"

# default with base colors
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName

# Default with custom colors
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName -colorPallet @{ connectors = "green"; HozLine = "yellow"; VerLine = "yellow"; juctions = "green" }
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle single -colorPallet @{ connectors = "cyan"; HozLine = "cyan"; VerLine = "cyan"; juctions = "cyan"; header = 'red'; row = 'blue' }
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle Single
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle Double
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle Rounded
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle Minimal

# Note the Alignment properties are case sensitive
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName `
                               -Alignment @{Name = "right"; Length = "left"; BaseName = "center"} `
                               -BorderStyle single `
                               -MaxWidth 100 `
                               -TrimContent

# Format the table with custom colors and format using a hashtable of scriptblocks with property names as the keys
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName `
                                 -Format @{
                                        Name={
                                            if($args -match 'libs') {csole -s $args[0] -c red
                                            }else{$args[0]}
                                        }; 
                                        Length={"$args"}; 
                                        BaseName={$args}
                                    }