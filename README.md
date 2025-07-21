
# AsciiTableView

![license-badge][license-badge]

A simple powershell module to output objects as an ascii table.

## Features
- Output objects as an ascii table.
- Customize the table format.
- customize the table color pallet.
- Alias `watw` to output objects as an ascii table.
- Mulitple themes.

# Installation

Module can be installed from the PowerShell Gallery or downloaded from GitHub.

### 📦 PowerShell Gallery
```powershell
Install-Module -Name AsciiTableView
```
### 📦 GitHub
```powershell
Clone https://github.com/phellams/asciitableview.git
cd asciitableview
Import-Module .\
```

### 📦 Build Artifacts from source
```powershell
git clone https://github.com/phellams/asciitableview/releases/download/{$VERSION}/asciitableview-v{$VERSION}.zip
Expand-Archive -Path .\asciitableview.zip -DestinationPath .\asciitableview
cd asciitableview
Import-Module .\
```
## Usage

#### 🔘 Write-AsciiTable
🔸 Parameters
- `InputObject` - The input object to write to the table.
- `Property` - The properties of the input object to include in the table.
- `Format` - A hashtable that specifies the format of the table, properties passed and accessed via `$args` array e.g:
  ```powershell
  Name={
    if($args -match 'libs') {csole -s $args[0] -c red}
    else{$args[0]}
  }; 
  ```
- `NoHeader` - Specifies that the table header should not be displayed.
- `BorderStyle` - Specifies the style of the table border.
  - `None` - No border.
  - `Single` - Single border.
  - `Double` - Double border.
  - `Rounded` - Rounded border.
  - `Minimal` - Minimal border.
  - `Bold` - Bold border.
  - `Dotted` - Dotted border.
  - `Dashed` - Dashed border.
  - `ASCII` - ASCII border.
  - `Stars` - Stars border.
  - `Block` - Block border.
  - `LightBlock` - LightBlock border.
  - `MediumBlock` - MediumBlock border.
  - `DarkBlock` - DarkBlock border.
  - `HeavyBlock` - HeavyBlock border.
- `MaxWidth` - Specifies the maximum width of the table.
- `TrimContent` - Specifies that the content of the table should be trimmed to fit the table width.
- `Alignment` - Specifies the alignment of the table content.
- `ColorPallet` - Specifies the color pallet of the table.


**Example Output:**

```pre
+---------------------+--------+----------------+
| Name                | Length | BaseName       |
+---------------------+--------+----------------+
| libs                | 1      | libs           |
| tests               | 1      | tests          |
| asciitableview.psd1 | 2412   | asciitableview |
| asciitableview.psm1 | 206    | asciitableview |
| readme.md           | 1438   | readme         |
+---------------------+--------+----------------+
```

> 🦜 Note!
> 

#### **Examples:**

🔹 Output with default format and colors

```powershell
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName
```

🔹 Output with custom colors

```powershell
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName -colorPallet @{ connectors = "green"; HozLine = "yellow"; VerLine = "yellow"; juctions = "green" }

```
🔹 Output with custom colors and custom heading color

```powershell
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName `
                                 -BorderStyle single `
                                 -colorPallet @{ connectors = "cyan"; HozLine = "cyan"; VerLine = "cyan"; juctions = "cyan"; header = 'red'; row = 'blue' }
```

🔹 Output with custom border styles

```powershell
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName -BorderStyle Single
```

```text
┌─────────────────────┬────────┬────────────────┐
│ Name                │ Length │ BaseName       │
├─────────────────────┼────────┼────────────────┤
│ libs                │ 1      │ libs           │
│ tests               │ 1      │ tests          │
│ asciitableview.psd1 │ 2434   │ asciitableview │
│ asciitableview.psm1 │ 206    │ asciitableview │
│ readme.md           │ 5138   │ readme         │
└─────────────────────┴────────┴────────────────┘
```



🔹 Output with custom alignment

```powershell
Get-ChildItem | Write-AsciiTable -Property Name, Length, BaseName `
                               -Alignment @{Name = "right"; Length = "left"; BaseName = "center"} `
                               -BorderStyle single `
                               -MaxWidth 100 `
                               -TrimContent
```

```text
┌─────────────────────┬────────┬────────────────┐
│                Name │ Length │    BaseName    │
├─────────────────────┼────────┼────────────────┤
│                libs │ 1      │      libs      │
│               tests │ 1      │     tests      │
│ asciitableview.psd1 │ 2434   │ asciitableview │
│ asciitableview.psm1 │ 206    │ asciitableview │
│           readme.md │ 6367   │     readme     │
└─────────────────────┴────────┴────────────────┘
```

🔹 Output table with custom colors and format using property hook

```powershell
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
```


# License

This project is released under the [MIT License](LICENSE)






[license-badge]: https://img.shields.io/badge/License-MIT-Blue?style=for-the-badge&labelColor=%232D2D34&color=%2317202a