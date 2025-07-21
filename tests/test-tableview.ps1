# Tests "Default", "Single", "Double", "Rounded", "Minimal"

# default with base colors
dir | select name, Length, BaseName | Write-AsciiTable -Property Name, Length, BaseName

# Default with custom colors
Dir | select name, Length, BaseName | Write-AsciiTable -Property Name, Length, BaseName -colorPallet @{ connectors = "green"; HozLine = "yellow"; VerLine = "yellow"; juctions = "green" }
Dir | select name, Length, BaseName | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle single -colorPallet @{ connectors = "cyan"; HozLine = "cyan"; VerLine = "cyan"; juctions = "cyan"; header = 'red'; row = 'blue' }
Dir | select name, Length, BaseName | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle Single
Dir | select name, Length, BaseName | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle Double
Dir | select name, Length, BaseName | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle Rounded
Dir | select name, Length, BaseName | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle Minimal

Dir | select name, Length, BaseName | Write-AsciiTable -Property Name, Length, BaseName `
                                                       -Alignment @{Name = "right"; Length = "left"; BaseName = "center"} `
                                                       -BorderStyle single `
                                                       -MaxWidth 100 `
                                                       -TrimContent